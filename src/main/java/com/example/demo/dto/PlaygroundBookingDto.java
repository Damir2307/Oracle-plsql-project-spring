package com.example.demo.dto;

import com.example.demo.enitity.Booking;
import lombok.Data;

import java.util.List;

@Data
public class PlaygroundBookingDto {
    private Long id;

    private String playgroundName;

    private String playgroundAddress;

    private int price;

    private int startTime;//9

    private int closeTime;//19

    private String description;

    private String phone;

    private List<Booking> bookingList;

    private int width;

    private int height;

    private String cover;

    private String roofType;

    private boolean shower;

    private boolean dressingRoom;

    private boolean parking;

    private boolean tribune;

}
