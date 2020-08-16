package com.patient.entity;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.Date;

@Data
@Entity
@Table(name = "patientinfo")
@Getter
@Setter
public class PatientInfo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name ="patientid")
    private Integer patientId;
    @Column(name ="practiceid")
    private Integer practiceId;
    @Column(name ="firstname")
    private String firstName;
    @Column(name ="lastname")
    private String lastName;
    @Column(name ="city")
    private String city;
    @Column(name ="state")
    private String state;
    @Column(name ="gender")
    private String gender;
    @Column(name ="patientagegroup")
    private String patientAgeGroup;
    @Column(name ="birthdate")
    private Date birthDate;
    @Column(name ="age")
    private Integer age;

}
