package com.example.demo.controller;


import com.example.demo.dto.PSdto;
import com.example.demo.dto.PlaygroundDto;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.simple.SimpleJdbcCall;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

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
}
