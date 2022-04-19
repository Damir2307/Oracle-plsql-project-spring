package com.example.demo.enitity;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Booking {

    private Long userId;

    private Long playgroundId;

    private int bronTime;

    private int bronDay;

    private int bronMonth;
}
