package com.example.demo.controller;

import com.example.demo.enitity.Specification;
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
@RequestMapping("/v1/api/specification")
@AllArgsConstructor
public class SpecificationController {
    private final String specificationInsert="INSERT INTO specification(id,cover,rooftype,width,height,shower,dressingroom,parking,tribune) VALUES(specification_seq.nextval,?,?,?,?,?,?,?,?)";
    @Autowired
    @Qualifier("oracleConn")
    public final DataSource mainDataSource;
    private JdbcTemplate jdbcTemplate;
    @PostConstruct
    private void postConstruct() {
        jdbcTemplate = new JdbcTemplate(mainDataSource);
    }


    @PostMapping("/create")
    public ResponseEntity<String> createSpecification(@RequestBody Specification specification) {
        try {
            jdbcTemplate.execute(specificationInsert,new PreparedStatementCallback<Boolean>(){
                @Override
                public Boolean doInPreparedStatement(PreparedStatement myStmt)
                        throws SQLException, DataAccessException {

                    myStmt.setString(1, specification.getCover());
                    myStmt.setString(2, specification.getRoofType());
                    myStmt.setInt(3, specification.getWidth());
                    myStmt.setInt(4, specification.getHeight());
                    myStmt.setInt(5, specification.getShower());
                    myStmt.setInt(6, specification.getDressingRoom());
                    myStmt.setInt(7, specification.getParking());
                    myStmt.setInt(8, specification.getTribune());

                    return myStmt.execute();
                }});
            return new ResponseEntity<>("Specification was created successfully.", HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
