package com.NowDoc.NowDoc.service;

import com.NowDoc.NowDoc.Entities.Medecin;
import com.NowDoc.NowDoc.repository.MedecinRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MedecinServiceImpl implements MedecinService {

    @Autowired
    MedecinRepository medecinRepository;

    @Override
    public Medecin saveMedecin(Medecin medecin) {
        return medecinRepository.save(medecin);
    }

    @Override
    public Medecin updateMedecin(Medecin medecin) {
        return medecinRepository.save(medecin);
    }

    @Override
    public Medecin getMedecin(Long id) {
        return medecinRepository.findById(id).orElse(null);
    }

    @Override
    public List<Medecin> getAllMedecins() {
        return medecinRepository.findAll();
    }

    @Override
    public void deleteById(long id) {
        medecinRepository.deleteById(id);
    }

    @Override
    public void deleteAllMedecins() {
        medecinRepository.deleteAll();
    }

    @Override
    public Medecin findByEmailAndMotDePasse(String email, String motDePasse) {
        return medecinRepository.findByEmailAndMotDePasse(email, motDePasse);
    }

    @Override
    public List<Medecin> findBySpecialiteAndVille(String specialites, String ville) {
        return medecinRepository.findBySpecialitesAndVille(specialites, ville);
    }
}
