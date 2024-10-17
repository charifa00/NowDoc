package com.NowDoc.NowDoc.service;


import com.NowDoc.NowDoc.Entities.Medecin;
import org.springframework.stereotype.Service;

import java.util.List;



@Service
public interface MedecinService {

    Medecin saveMedecin(Medecin medecin);

    Medecin updateMedecin(Medecin medecin);

    Medecin getMedecin(Long id);

    List<Medecin> getAllMedecins();

    void deleteById(long id);

    void deleteAllMedecins();

    Medecin findByEmailAndMotDePasse(String email, String motDePasse);

    List<Medecin> findBySpecialiteAndVille(String specialites, String ville);

}