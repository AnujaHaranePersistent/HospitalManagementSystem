package com.patient.service;

import com.patient.entity.AppointmentInfo;
import com.patient.entity.PatientInfo;

import java.util.List;

public interface HospitalManagementService {
     List<PatientInfo> getAllPatientInfo();
     List<AppointmentInfo> getAppointmentsByClinicId(Integer clinicId);
     boolean deleteAppointmentById(Integer appId);
     PatientInfo savePatientInfo(PatientInfo patientInfo);
     AppointmentInfo saveAppointmentInfo(AppointmentInfo appointmentInfo);

}
