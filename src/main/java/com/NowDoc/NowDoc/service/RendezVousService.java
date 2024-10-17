package com.NowDoc.NowDoc.service;

import com.NowDoc.NowDoc.Entities.Medecin;
import com.NowDoc.NowDoc.Entities.RendezVous;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

public interface RendezVousService {

    List<RendezVous> getAllRendezVous();
    RendezVous saveRendezVous(RendezVous rendezVous) ;
    Optional<RendezVous> getRendezVousById(Long id);
    RendezVous createRendezVous(RendezVous rendezVous);
    RendezVous updateRendezVous(Long id, RendezVous rendezVousDetails);
    void deleteRendezVous(Long id);
}
