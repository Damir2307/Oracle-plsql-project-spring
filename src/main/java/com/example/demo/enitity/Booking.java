package com.example.demo.enitity;

import com.example.demo.enitity.id.IdentifiedId;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.time.LocalDateTime;

@Getter
@Setter
@Entity
@Table(name = "booking")
public class Booking implements IdentifiedId<Long> {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "booking_seq")
    @SequenceGenerator(name = "booking_seq", allocationSize = 1, sequenceName = "booking_seq")
    private Long id;

    @ManyToOne
    @JoinColumn(name = "user_id",insertable = false,updatable = false)
    private Users users;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "playground_id", insertable = false, updatable = false)
    private Playground playground;

    @Column(name = "user_id")
    private Long userId;

    @Column(name = "playground_id")
    private Long playgroundId;

    @Column(name = "bron_time")
    private String bronTime;

    @Column(name = "bron_date")
    private String bronDate;//8:04
/*
    [{date:"8:04",time:"9"},{date:"8:04",time:"10"},{date:"8:04",time:"11"}]
    */
}
