package com.example.demo.enitity;

import lombok.Data;
@Data
public class Playground {
    private String playgroundName;

    private String playgroundAddress;

    private int price;

    private int startTime;//9
    //int 9 kilip jiberu

    private int closeTime;//19

    private String description;

    private String phone;

    private Long sportId;


    public Playground(String playgroundName, String playgroundAddress, int price, Integer startTime, Integer closeTime, String description, String phone, Long sportId, Long specificationId) {
        this.playgroundName = playgroundName;
        this.playgroundAddress = playgroundAddress;
        this.price = price;
        this.startTime = startTime;
        this.closeTime = closeTime;
        this.description = description;
        this.phone = phone;
        this.sportId = sportId;
        this.specificationId = specificationId;
    }

    private Long specificationId;

    public Playground() {

    }
}
