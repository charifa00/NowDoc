package com.NowDoc.NowDoc.service;

import com.NowDoc.NowDoc.Entities.Patient;
import com.NowDoc.NowDoc.repository.PatientRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
class PatientServiceImpl implements PatientService {
    @Autowired
    PatientRepository patientRepository;

    @Override
    public Patient savePatient(Patient patient) {
        return patientRepository.save(patient);
    }

    @Override
    public Patient updatePatient(Patient patient) {
        return patientRepository.save(patient);
    }

    @Override
    public Patient getPatient(Long id) {
        return patientRepository.findById(id).orElse(null);
    }

    @Override
    public List<Patient> getAllPatients() {
        return patientRepository.findAll();
    }

    @Override
    public void deleteById(long id) {
        patientRepository.deleteById(id);
    }

    @Override
    public void deleteAllPatients() {
        patientRepository.deleteAll();
    }

    @Override
    public Patient findByEmailAndMotDePasse(String email, String motDePasse) {
        return patientRepository.findByEmailAndMotDePasse(email, motDePasse);
    }
    @Override
    public Patient findByEmail(String email) {
        return patientRepository.findByEmail(email);
    }
}
