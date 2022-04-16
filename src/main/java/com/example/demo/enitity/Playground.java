package com.example.demo.enitity;

import com.example.demo.enitity.id.IdentifiedId;
import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.math.BigDecimal;

@Getter
@Setter
@Table(name = "playground")
@Entity
public class Playground  implements IdentifiedId<Long> {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "playground_seq")
    @SequenceGenerator(name = "playground_seq", allocationSize = 1, sequenceName = "playground_seq")
    private Long id;

    @Column(name = "playground_name")
    private String playgroundName;

    @Column(name = "playground_address")
    private String playgroundAddress;

    @Column(name = "price")
    private BigDecimal price;

    @Column(name = "start_time")
    private Integer startTime;//9
    //int 9 kilip jiberu

    @Column(name = "close_time")
    private Integer closeTime;//19

    @Column(name = "description")
    private String description;

    @Column(name = "phone")
    private String phone;


    @JsonIgnore
    @ManyToOne(targetEntity = Sport.class)
    @JoinColumn(name = "sport_id",insertable = false,updatable = false)
    private Sport sport;

    @Column(name ="sport_id")
    private Long sportId;

    @OneToOne(cascade = CascadeType.ALL, orphanRemoval = true)
    @JoinColumn(name = "specification_id", updatable = false, insertable = false)
    private Specification specification;

    @Column(name = "specification_id")
    private Long specificationId;

}
