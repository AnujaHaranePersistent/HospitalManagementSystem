package com.patient.repository;

import com.patient.entity.PatientInfo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.List;

@Repository
public interface PatientRepository extends JpaRepository<PatientInfo,Integer> {

}

