package com.patient.service;

import com.patient.entity.AppointmentInfo;
import com.patient.entity.PatientInfo;
import com.patient.repository.AppointmentRepository;
import com.patient.repository.PatientRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Time;
import java.time.LocalDate;
import java.time.Period;
import java.time.ZoneId;
import java.util.Date;
import java.util.List;
import java.util.Optional;

@Service
public class HospitalManagementServiceImpl implements HospitalManagementService {

    @Autowired
    private AppointmentRepository appointmentRepository;
    @Autowired
    private PatientRepository patientRepository;


    @Override
    public List<PatientInfo> getAllPatientInfo() {
        return patientRepository.findAll();
    }

    @Override
    public List<AppointmentInfo> getAppointmentsByClinicId(Integer clinicId) {
        return appointmentRepository.findByClinicId(clinicId);
    }

    @Override
    public boolean deleteAppointmentById(Integer appId) {
        Optional<AppointmentInfo> appointmentInfo=appointmentRepository.findById(appId);
        if(appointmentInfo.get().getAmount() > 50) {
            appointmentRepository.deleteById(appId);
            return true;
        }
        else return false;
    }

    @Override
    public PatientInfo savePatientInfo(PatientInfo patientInfo) {
        LocalDate now1 = LocalDate.now();
        Period diff1 = Period.between(patientInfo.getBirthDate().toInstant()
                .atZone(ZoneId.systemDefault())
                .toLocalDate(), now1);
        System.out.println("age:" + diff1.getYears() + "years");
        if (diff1.getYears() < 18)
            patientInfo.setPatientAgeGroup("Minor");
        else
            patientInfo.setPatientAgeGroup("Adult");
        patientInfo.setAge(diff1.getYears());
        return patientRepository.save(patientInfo);
    }

    @Override
    public AppointmentInfo saveAppointmentInfo(AppointmentInfo appointmentInfo) {

        return appointmentRepository.save(appointmentInfo);
    }
}
