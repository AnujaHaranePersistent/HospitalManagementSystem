package com.patient.entity;

import lombok.Data;

import javax.persistence.*;
import java.sql.Time;
import java.util.Date;

@Data
@Table(name = "appointmentinfo")
@Entity
public class AppointmentInfo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "appid")
    private Integer appId;
    @Column(name = "patientid")
    private int patId;
    @Column(name = "appdate")
    private Date appDate;
    @Column(name = "provider")
    private Integer provider;
    @Column(name = "operatory")
    private Integer operatory;
    @Column(name = "apptime")
    private Time appTime;
    @Column(name = "applength")
    private Integer appLength;
    @Column(name = "amount")
    private Integer amount;
    @Column(name = "clinicid")
    private Integer clinicId;


}
