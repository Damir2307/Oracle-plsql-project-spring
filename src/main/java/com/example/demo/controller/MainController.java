package com.example.demo.controller;


import com.example.demo.dto.PSdto;
import com.example.demo.dto.PlaygroundBookingDto;
import com.example.demo.dto.PlaygroundDto;
import com.example.demo.enitity.Booking;
import com.example.demo.enitity.Specification;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.simple.SimpleJdbcCall;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpServletRequest;
import javax.sql.DataSource;
import java.util.*;

@AllArgsConstructor
@Controller
public class MainController {
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

    @GetMapping("/")
    public String index(ModelMap model){
        List<PlaygroundDto> playgrounds = new ArrayList<PlaygroundDto>();
        jdbcTemplate.setResultsMapCaseInsensitive(true);
        SimpleJdbcCall simpleJdbcCallRefCursor;

        simpleJdbcCallRefCursor = new SimpleJdbcCall(jdbcTemplate)
                .withCatalogName("playground_actions")
                .withProcedureName("select_all_playground")
                .returningResultSet("playgrounds",
                        BeanPropertyRowMapper.newInstance(PlaygroundDto.class));

        Map out = simpleJdbcCallRefCursor.execute();

        if (out == null) {
            playgrounds= Collections.emptyList();
        } else {
            playgrounds=(List) out.get("playgrounds");
        }
        model.put("ListPlaygrounds",playgrounds);
        return "index";
    }

    @GetMapping("/playgrounds")
    public String getAllPlaygrounds(ModelMap model){
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
            playgrounds= Collections.emptyList();
        } else {
            playgrounds=(List) out.get("playgrounds");
        }
        model.put("ListPlaygrounds",playgrounds);
        return "playgrounds";
    }

    @GetMapping("/filterByPrice")
    public String filterByPrice(HttpServletRequest request,ModelMap model){
        String rPrice = request.getParameter("price");
        int price = Integer.parseInt(rPrice);
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
        model.put("ListPlaygrounds",playgrounds);
        return "playgrounds";
    }

    @GetMapping("/filterFootball")
    public String filterFootball(ModelMap model){
        List<PSdto> playgrounds = new ArrayList<PSdto>();
        jdbcTemplate.setResultsMapCaseInsensitive(true);
        SimpleJdbcCall simpleJdbcCallRefCursor;

        simpleJdbcCallRefCursor = new SimpleJdbcCall(jdbcTemplate)
                .withCatalogName("filter_actions")
                .withProcedureName("filter_by_sport_p")
                .returningResultSet("playgrounds",
                        BeanPropertyRowMapper.newInstance(PSdto.class));
        SqlParameterSource paramaters = new MapSqlParameterSource()
                .addValue("sname", "Футбол");

        Map out = simpleJdbcCallRefCursor.execute(paramaters);

        if (out == null) {
            playgrounds=Collections.emptyList();
        } else {
            playgrounds=(List) out.get("playgrounds");
        }
        model.put("ListPlaygrounds",playgrounds);
        return "playgrounds";
    }
    @GetMapping("/filterVolleyball")
    public String filterVoleyball(ModelMap model){
        List<PSdto> playgrounds = new ArrayList<PSdto>();
        jdbcTemplate.setResultsMapCaseInsensitive(true);
        SimpleJdbcCall simpleJdbcCallRefCursor;

        simpleJdbcCallRefCursor = new SimpleJdbcCall(jdbcTemplate)
                .withCatalogName("filter_actions")
                .withProcedureName("filter_by_sport_p")
                .returningResultSet("playgrounds",
                        BeanPropertyRowMapper.newInstance(PSdto.class));
        SqlParameterSource paramaters = new MapSqlParameterSource()
                .addValue("sname", "Волейбол");

        Map out = simpleJdbcCallRefCursor.execute(paramaters);

        if (out == null) {
            playgrounds=Collections.emptyList();
        } else {
            playgrounds=(List) out.get("playgrounds");
        }
        model.put("ListPlaygrounds",playgrounds);
        return "playgrounds";
    }

    @GetMapping("/filterBasketball")
    public String filterBasketball(ModelMap model){
        List<PSdto> playgrounds = new ArrayList<PSdto>();
        jdbcTemplate.setResultsMapCaseInsensitive(true);
        SimpleJdbcCall simpleJdbcCallRefCursor;

        simpleJdbcCallRefCursor = new SimpleJdbcCall(jdbcTemplate)
                .withCatalogName("filter_actions")
                .withProcedureName("filter_by_sport_p")
                .returningResultSet("playgrounds",
                        BeanPropertyRowMapper.newInstance(PSdto.class));
        SqlParameterSource paramaters = new MapSqlParameterSource()
                .addValue("sname", "Баскетбол");

        Map out = simpleJdbcCallRefCursor.execute(paramaters);

        if (out == null) {
            playgrounds=Collections.emptyList();
        } else {
            playgrounds=(List) out.get("playgrounds");
        }
        model.put("ListPlaygrounds",playgrounds);
        return "playgrounds";
    }

    @GetMapping("/playgroundDetails")
    public String playgroundDetails(HttpServletRequest request,ModelMap model){
        String rId = request.getParameter("id");
        String sportName = request.getParameter("sportName");
        Long id =Long.parseLong(rId);
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
        Specification specification = jdbcTemplate.queryForObject("SELECT WIDTH,HEIGHT,COVER,ROOFTYPE,SHOWER,DRESSINGROOM,PARKING,TRIBUNE FROM specification WHERE id=?",
                BeanPropertyRowMapper.newInstance(Specification.class), playground.getSpecificationId());
        playgroundBookingDto.setCover(specification.getCover());
        playgroundBookingDto.setHeight(specification.getHeight());
        playgroundBookingDto.setRoofType(specification.getRoofType());
        playgroundBookingDto.setWidth(specification.getWidth());
        playgroundBookingDto.setParking(specification.getParking()==1 ? true:false);
        playgroundBookingDto.setShower(specification.getShower()==1 ? true:false);
        playgroundBookingDto.setTribune(specification.getTribune()==1 ? true:false);
        playgroundBookingDto.setDressingRoom(specification.getDressingRoom()==1 ? true:false);

        Calendar calendar = new GregorianCalendar();
        Date[] arr= new Date[7];
        for(int i=0;i<7;i++) {
            arr[i]=calendar.getTime();
            calendar.add(Calendar.DAY_OF_MONTH,1);
        }
        model.put("date", arr);
        model.put("playgroundDetails",playgroundBookingDto);
        model.put("sportName",sportName);
        return "playgroundDetails";
    }
}
