package com.patient.controller;

import com.patient.entity.AppointmentInfo;
import com.patient.entity.PatientInfo;
import com.patient.service.HospitalManagementServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class HospitalManagementController {
    @Autowired
    private HospitalManagementServiceImpl hospitalManagementService;

    @GetMapping("appointments/{clinicId}")
    public List<AppointmentInfo> getAllAppointmentsByClinicId(@PathVariable(value = "clinicId") Integer clinicId) {
        return hospitalManagementService.getAppointmentsByClinicId(clinicId);
    }

    @PostMapping("appointments")
    public AppointmentInfo saveAppointmentInfo(@RequestBody AppointmentInfo appointmentInfo) {
        return hospitalManagementService.saveAppointmentInfo(appointmentInfo);
    }

    @DeleteMapping("appointments/{appId}")
    public ResponseEntity<?> deleteAppointmentsByAppId(@PathVariable(value = "appId") Integer appId) {
        if (hospitalManagementService.deleteAppointmentById(appId))
            return new ResponseEntity<>(HttpStatus.OK);
        else return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
    }

    @GetMapping("patients")
    public List<PatientInfo> getAllPatientInfo() {
        return hospitalManagementService.getAllPatientInfo();
    }

    @PostMapping("patients")
    public PatientInfo savePatientInfo(@RequestBody PatientInfo patientInfo) {
        return hospitalManagementService.savePatientInfo(patientInfo);
    }


}
