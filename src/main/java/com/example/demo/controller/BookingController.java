package com.example.demo.controller;

import com.example.demo.enitity.Sport;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.dao.DataAccessException;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCallback;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@RestController
@RequestMapping("/v1/api/booking")
@AllArgsConstructor
public class BookingController {
    private final String sportInsert="INSERT INTO sport(id,sport_name) VALUES(sport_seq.nextval,?)";
    @Autowired
    @Qualifier("oracleConn")
    public final DataSource mainDataSource;
    private JdbcTemplate jdbcTemplate;
    @PostConstruct
    private void postConstruct() {
        jdbcTemplate = new JdbcTemplate(mainDataSource);
    }


    @PostMapping("/create")
    public ResponseEntity<String> createSport(@RequestBody Sport sport) {
        try {
            jdbcTemplate.execute(sportInsert,new PreparedStatementCallback<Boolean>(){
                @Override
                public Boolean doInPreparedStatement(PreparedStatement myStmt)
                        throws SQLException, DataAccessException {

                    myStmt.setString(1, sport.getSportName());

                    return myStmt.execute();
                }});
            return new ResponseEntity<>("Sport was created successfully.", HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
