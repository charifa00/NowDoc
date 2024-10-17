package com.NowDoc.NowDoc.service;

import com.NowDoc.NowDoc.Entities.Patient;
import java.util.List;
import java.util.Optional;

public interface PatientService {

    Patient savePatient(Patient patient);
    Patient updatePatient(Patient patient);
    Patient getPatient(Long id);
    List<Patient> getAllPatients();
    void deleteById(long id);
    void deleteAllPatients();
    Patient findByEmailAndMotDePasse(String email, String motDePasse);
    public Patient findByEmail(String email) ;
}
