package com.example.demo.enitity;

import com.example.demo.enitity.id.IdentifiedId;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@Table(name = "sport")
@Entity
public class Sport implements IdentifiedId<Long> {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE,generator = "sport_seq")
    @SequenceGenerator(name = "sport_seq",allocationSize = 1,sequenceName = "sport_seq")
    private Long id;

    @Column(name = "sport_name")
    private String sportName;

}
