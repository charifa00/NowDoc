package com.NowDoc.NowDoc.repository;


import com.NowDoc.NowDoc.Entities.Patient;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.Optional;

public interface PatientRepository extends JpaRepository<Patient, Long> {
   Patient findByEmailAndMotDePasse(String email, String motDePasse);
   Patient findByEmail(String email);
}
