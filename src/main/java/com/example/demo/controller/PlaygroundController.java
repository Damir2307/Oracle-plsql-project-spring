package com.example.demo.controller;

import com.example.demo.dto.PlaygroundBookingDto;
import com.example.demo.dto.PlaygroundDto;
import com.example.demo.enitity.Booking;
import com.example.demo.enitity.Playground;
import com.example.demo.enitity.Specification;
import io.swagger.annotations.ApiOperation;
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
import org.springframework.web.bind.annotation.*;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/v1/api/playground")
@AllArgsConstructor
public class PlaygroundController {
    private final String deleteRow="DELETE FROM PLAYGROUND WHERE id=?";
    private final String insertRow= "INSERT INTO playground(id,playground_name,playground_address,price,starttime,closetime,description,phone,sport_id,specification_id) VALUES(playground_seq.nextval,?,?,?,?,?,?,?,?,?)";
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

                    return myStmt.execute();
                }});
            return new ResponseEntity<>("Playground was created successfully.", HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
    @ApiOperation(value = "Delete task",notes = "Delete task")
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
            playgroundBookingDto.setId(playground.getId());
            playgroundBookingDto.setPlaygroundAddress(playground.getPlaygroundAddress());
            playgroundBookingDto.setPlaygroundName(playground.getPlaygroundName());
            playgroundBookingDto.setDescription(playground.getDescription());
            playgroundBookingDto.setCloseTime(playground.getCloseTime());
            playgroundBookingDto.setStartTime(playground.getStartTime());
            playgroundBookingDto.setPhone(playground.getPhone());
            playgroundBookingDto.setPrice(playground.getPrice());
            List<Booking> bookingList=jdbcTemplate.query("SELECT * FROM booking inner join playground on booking.playground_id=playground.id WHERE booking.playground_id=?",
                    BeanPropertyRowMapper.newInstance(Booking.class), id);
            playgroundBookingDto.setBookingList(bookingList);
            Specification specification = jdbcTemplate.queryForObject("SELECT * FROM specification inner join playground on specification.id=playground.specification_id WHERE specification.id=?",
                    BeanPropertyRowMapper.newInstance(Specification.class), playground.getSpecificationId());
            playgroundBookingDto.setCover(specification.getCover());
            playgroundBookingDto.setHeight(specification.getHeight());
            playgroundBookingDto.setRoofType(specification.getRoofType());
            playgroundBookingDto.setWidth(specification.getWidth());
            playgroundBookingDto.setParking(specification.getParking()==1 ? true:false);
            playgroundBookingDto.setShower(specification.getShower()==1 ? true:false);
            playgroundBookingDto.setTribune(specification.getTribune()==1 ? true:false);
            playgroundBookingDto.setDressingRoom(specification.getDressingRoom()==1 ? true:false);
            if (playground != null) {
                return new ResponseEntity<>(playgroundBookingDto, HttpStatus.OK);
            } else {
                return new ResponseEntity<>(HttpStatus.NOT_FOUND);
            }
        } catch (IncorrectResultSizeDataAccessException e) {
            return null;
        }
    }

    @GetMapping("")
    public ResponseEntity<List<PlaygroundDto>> getAllPLaygrounds() {
        try {
            List<PlaygroundDto> playgrounds = new ArrayList<PlaygroundDto>();
            playgrounds=jdbcTemplate.query("SELECT * from playground", BeanPropertyRowMapper.newInstance(PlaygroundDto.class));
            if (playgrounds.isEmpty()) {
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }
            return new ResponseEntity<>(playgrounds, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @PostMapping
    public ResponseEntity<String> bron(@RequestBody Booking booking){
        try {
            jdbcTemplate.update("INSERT INTO booking (id,brontime, bronday,bronmonth, user_id,playground_id) VALUES(booking_seq.nextval,?,?,?,?,?)",
                    new Object[] {booking.getBronTime(),booking.getBronDay(),booking.getBronMonth(),booking.getUserId(),booking.getPlaygroundId()});
            return new ResponseEntity<>("Bron was created successfully.", HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }


}
