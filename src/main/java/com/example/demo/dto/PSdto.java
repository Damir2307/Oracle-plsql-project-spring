package com.example.demo.dto;

import lombok.Data;

import java.math.BigDecimal;

@Data
public class PSdto {
    private Long id;
    private String playgroundName;

    private String playgroundAddress;

    private int price;

    private int startTime;//9
    //int 9 kilip jiberu

    private int closeTime;//19

    private String url;

    private String description;

    private String phone;

    private Long sportId;

    private Long specificationId;

    private String sportName;
}
