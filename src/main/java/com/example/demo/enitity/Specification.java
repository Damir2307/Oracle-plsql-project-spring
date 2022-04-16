package com.example.demo.enitity;

import com.example.demo.enitity.id.IdentifiedId;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@Table(name = "specification")
@Entity
public class Specification implements IdentifiedId<Long> {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE,generator = "specification_seq")
    @SequenceGenerator(name = "specification_seq",allocationSize = 1,sequenceName = "specification_seq")
    private Long id;

    @Column(name = "width")
    private Integer width;

    @Column(name = "height")
    private Integer height;

    @Column(name = "cover")
    private String cover;

    @Column(name = "roof_type")
    private String roofType;

    @Column(name = "shower")
    private Boolean shower;

    @Column(name = "dressing_room")
    private Boolean dressingRoom;

    @Column(name = "parking")
    private Boolean parking;

    @Column(name = "tribune")
    private Boolean tribune;

}
