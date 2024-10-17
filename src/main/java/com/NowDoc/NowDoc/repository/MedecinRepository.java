package com.NowDoc.NowDoc.repository;


import com.NowDoc.NowDoc.Entities.Medecin;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MedecinRepository extends JpaRepository<Medecin, Long> {
    Medecin findByEmailAndMotDePasse(String email, String motDePasse);
    List<Medecin> findBySpecialitesAndVille(String specialites, String ville); }