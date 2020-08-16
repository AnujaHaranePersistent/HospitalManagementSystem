package com.patient.repository;

import com.patient.entity.AppointmentInfo;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface AppointmentRepository extends JpaRepository<AppointmentInfo,Integer> {

    public List<AppointmentInfo> findByClinicId(Integer clinicId);
}
