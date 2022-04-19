package com.example.demo.config;

import oracle.jdbc.datasource.impl.OracleDataSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Profile;

import javax.sql.DataSource;
import java.sql.SQLException;

@Configuration
public class OracleConfiguration {
    @Bean(name="oracleConn")
    public DataSource dataSource() throws SQLException {
        OracleDataSource dataSource = new OracleDataSource();
        dataSource.setUser("Damir");
        dataSource.setPassword("349161");
        dataSource.setURL("jdbc:oracle:thin:@localhost:1521/orcl");
        dataSource.setImplicitCachingEnabled(true);
        return dataSource;
    }
}