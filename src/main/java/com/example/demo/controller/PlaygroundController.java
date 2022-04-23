package com.example.demo.controller;

import com.example.demo.dto.PSdto;
import com.example.demo.dto.PlaygroundBookingDto;
import com.example.demo.dto.PlaygroundDto;
import com.example.demo.enitity.Booking;
import com.example.demo.enitity.Playground;
import com.example.demo.enitity.Specification;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.dao.DataAccessException;
import org.springframework.dao.IncorrectResultSizeDataAccessException;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCallback;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.simple.SimpleJdbcCall;
import org.springframework.web.bind.annotation.*;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/v1/api/playground")
@AllArgsConstructor
public class PlaygroundController {
    private final String deleteRow="DELETE FROM PLAYGROUND WHERE id=?";
    private final String insertRow= "INSERT INTO playground(id,playground_name,playground_address,price,starttime,closetime,description,phone,sport_id,specification_id,url) VALUES(playground_seq.nextval,?,?,?,?,?,?,?,?,?,?)";
    @Autowired
    @Qualifier("oracleConn")
    public final DataSource mainDataSource;
    private JdbcTemplate jdbcTemplate;
    @PostConstruct
    private void postConstruct() {
        jdbcTemplate = new JdbcTemplate(mainDataSource);
    }

    @PostMapping("/create")
    public ResponseEntity<String> createPlayground(@RequestBody Playground playground) {
        try {
            jdbcTemplate.execute(insertRow,new PreparedStatementCallback<Boolean>(){
                @Override
                public Boolean doInPreparedStatement(PreparedStatement myStmt)
                        throws SQLException, DataAccessException {
                    myStmt.setString(1, playground.getPlaygroundName());
                    myStmt.setString(2, playground.getPlaygroundAddress());
                    myStmt.setInt(3, playground.getPrice());
                    myStmt.setInt(4, playground.getStartTime());
                    myStmt.setInt(5, playground.getCloseTime());
                    myStmt.setString(6, playground.getDescription());
                    myStmt.setString(7, playground.getPhone());
                    myStmt.setLong(8, playground.getSportId());
                    myStmt.setLong(9, playground.getSpecificationId());
                    myStmt.setString(10,playground.getUrl());

                    return myStmt.execute();
                }});
            return new ResponseEntity<>("Playground was created successfully.", HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
    @DeleteMapping("/{id}")
    public ResponseEntity<String> deleteById(@PathVariable("id") Long id){
        try {
            jdbcTemplate.execute(deleteRow,new PreparedStatementCallback<Boolean>(){
                @Override
                public Boolean doInPreparedStatement(PreparedStatement myStmt)
                        throws SQLException, DataAccessException {
                    myStmt.setLong(1,id);
                    return myStmt.execute();
                }});
            return new ResponseEntity<>("Playground was deleted successfully.", HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
    @GetMapping("/{id}")
    public ResponseEntity<PlaygroundBookingDto> getPlaygroundById(@PathVariable("id")Long id){
        try {
            PlaygroundDto playground = jdbcTemplate.queryForObject("SELECT * FROM playground WHERE id=?",
                    BeanPropertyRowMapper.newInstance(PlaygroundDto.class), id);
            PlaygroundBookingDto playgroundBookingDto=new PlaygroundBookingDto();
            playgroundBookingDto.setId(id);
            playgroundBookingDto.setPlaygroundAddress(playground.getPlaygroundAddress());
            playgroundBookingDto.setPlaygroundName(playground.getPlaygroundName());
            playgroundBookingDto.setDescription(playground.getDescription());
            playgroundBookingDto.setCloseTime(playground.getCloseTime());
            playgroundBookingDto.setStartTime(playground.getStartTime());
            playgroundBookingDto.setPhone(playground.getPhone());
            playgroundBookingDto.setPrice(playground.getPrice());
            playgroundBookingDto.setUrl(playground.getUrl());
//            List<Booking> bookingList=jdbcTemplate.query("SELECT user_id,playground_id,brontime,bronday,bronmonth FROM booking inner join playground on booking.playground_id=playground.id WHERE booking.playground_id=?",
//                    BeanPropertyRowMapper.newInstance(Booking.class), id);

            List<Booking> bookingList=new ArrayList<Booking>();
            jdbcTemplate.setResultsMapCaseInsensitive(true);
            SimpleJdbcCall simpleJdbcCallRefCursor;

            simpleJdbcCallRefCursor = new SimpleJdbcCall(jdbcTemplate)
                    .withCatalogName("booking_actions")
                    .withProcedureName("select_brons_by_playground")
                    .returningResultSet("brons",
                            BeanPropertyRowMapper.newInstance(Booking.class));
            SqlParameterSource paramaters = new MapSqlParameterSource()
                    .addValue("p_id", id);

            Map out = simpleJdbcCallRefCursor.execute(paramaters);

            if (out == null) {
                bookingList=Collections.emptyList();
            } else {
                bookingList=(List) out.get("brons");
            }

            playgroundBookingDto.setBookingList(bookingList);
            Specification specification = jdbcTemplate.queryForObject("SELECT COVER,ROOFTYPE,SHOWER,DRESSINGROOM,PARKING,TRIBUNE FROM specification WHERE id=?",
                    BeanPropertyRowMapper.newInstance(Specification.class), playground.getSpecificationId());
            playgroundBookingDto.setCover(specification.getCover());
            playgroundBookingDto.setRoofType(specification.getRoofType());
            playgroundBookingDto.setParking(specification.getParking()==1 ? true:false);
            playgroundBookingDto.setShower(specification.getShower()==1 ? true:false);
            playgroundBookingDto.setTribune(specification.getTribune()==1 ? true:false);
            playgroundBookingDto.setDressingRoom(specification.getDressingRoom()==1 ? true:false);
            if (playgroundBookingDto != null) {
                return new ResponseEntity<>(playgroundBookingDto, HttpStatus.OK);
            } else {
                return new ResponseEntity<>(HttpStatus.NOT_FOUND);
            }
        } catch (IncorrectResultSizeDataAccessException e) {
            return null;
        }
    }

    @GetMapping("")
    public ResponseEntity<List<PSdto>> getAllPLaygrounds() {
        try {
            List<PSdto> playgrounds = new ArrayList<PSdto>();
            jdbcTemplate.setResultsMapCaseInsensitive(true);
            SimpleJdbcCall simpleJdbcCallRefCursor;

            simpleJdbcCallRefCursor = new SimpleJdbcCall(jdbcTemplate)
                    .withCatalogName("playground_actions")
                    .withProcedureName("select_all_playground")
                    .returningResultSet("playgrounds",
                            BeanPropertyRowMapper.newInstance(PSdto.class));

            Map out = simpleJdbcCallRefCursor.execute();

            if (out == null) {
                playgrounds=Collections.emptyList();
            } else {
                playgrounds=(List) out.get("playgrounds");
            }
            if (playgrounds.isEmpty()) {
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }
            return new ResponseEntity<>(playgrounds, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
//        try {
//            List<PlaygroundDto> playgrounds = new ArrayList<PlaygroundDto>();
//            playgrounds=jdbcTemplate.query("SELECT * from playground", BeanPropertyRowMapper.newInstance(PlaygroundDto.class));
//            if (playgrounds.isEmpty()) {
//                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
//            }
//            return new ResponseEntity<>(playgrounds, HttpStatus.OK);
//        } catch (Exception e) {
//            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
//        }
    }

    @PostMapping("/bron")
    public ResponseEntity<String> bron(@RequestBody Booking booking){
        try {
            jdbcTemplate.update("INSERT INTO booking (id,brontime, bronday,bronmonth, user_id,playground_id) VALUES(booking_seq.nextval,?,?,?,?,?)",
                    new Object[] {booking.getBronTime(),booking.getBronDay(),booking.getBronMonth(),booking.getUserId(),booking.getPlaygroundId()});
            return new ResponseEntity<>("Bron was created successfully.", HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
    @GetMapping("/filterBySport/{sportName}")
    public ResponseEntity<List<PSdto>> filterBySport(@PathVariable("sportName")String sportName) {
        try {
            List<PSdto> playgrounds = new ArrayList<PSdto>();
            jdbcTemplate.setResultsMapCaseInsensitive(true);
             SimpleJdbcCall simpleJdbcCallRefCursor;

            simpleJdbcCallRefCursor = new SimpleJdbcCall(jdbcTemplate)
                    .withCatalogName("filter_actions")
                    .withProcedureName("filter_by_sport_p")
                    .returningResultSet("playgrounds",
                            BeanPropertyRowMapper.newInstance(PSdto.class));
            SqlParameterSource paramaters = new MapSqlParameterSource()
                    .addValue("sname", sportName);

            Map out = simpleJdbcCallRefCursor.execute(paramaters);

            if (out == null) {
                playgrounds=Collections.emptyList();
            } else {
                playgrounds=(List) out.get("playgrounds");
            }
            if (playgrounds.isEmpty()) {
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }
            return new ResponseEntity<>(playgrounds, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
    @GetMapping("/filterByPrice/{price}")
    public ResponseEntity<List<PSdto>> filterByPrice(@PathVariable("price")int price) {
        try {
            List<PSdto> playgrounds = new ArrayList<PSdto>();
            jdbcTemplate.setResultsMapCaseInsensitive(true);
            SimpleJdbcCall simpleJdbcCallRefCursor;

            simpleJdbcCallRefCursor = new SimpleJdbcCall(jdbcTemplate)
                    .withCatalogName("filter_actions")
                    .withProcedureName("filter_by_price_p")
                    .returningResultSet("playgrounds",
                            BeanPropertyRowMapper.newInstance(PSdto.class));
            MapSqlParameterSource paramaters = new MapSqlParameterSource();
            paramaters.addValue("n1",price);

            Map out = simpleJdbcCallRefCursor.execute(paramaters);
            if (out == null) {
                playgrounds=Collections.emptyList();
            } else {
                playgrounds=(List) out.get("playgrounds");
            }
            if (playgrounds.isEmpty()) {
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }
            return new ResponseEntity<>(playgrounds, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }



}
