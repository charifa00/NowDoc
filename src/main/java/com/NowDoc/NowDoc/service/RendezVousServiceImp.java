package com.NowDoc.NowDoc.service;

import com.NowDoc.NowDoc.Entities.Medecin;
import com.NowDoc.NowDoc.Entities.Patient;
import com.NowDoc.NowDoc.Entities.RendezVous;
import com.NowDoc.NowDoc.repository.RendezVousRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class RendezVousServiceImp implements RendezVousService {

    @Autowired
    private RendezVousRepository rendezVousRepository;

    @Override
    public List<RendezVous> getAllRendezVous() {
        return rendezVousRepository.findAll();
    }

    @Override
    public Optional<RendezVous> getRendezVousById(Long id) {
        return rendezVousRepository.findById(id);
    }

    @Override
    public RendezVous createRendezVous(RendezVous rendezVous) {
        return rendezVousRepository.save(rendezVous);
    }

    @Override
    public RendezVous saveRendezVous(RendezVous rendezVous) {
        return rendezVousRepository.save(rendezVous);
    }

    @Override
    public RendezVous updateRendezVous(Long id, RendezVous rendezVousDetails) {
        RendezVous rendezVous = rendezVousRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Rendez-vous not found for this id :: " + id));

        rendezVous.setDateHeure(rendezVousDetails.getDateHeure());
        rendezVous.setMedecin(rendezVousDetails.getMedecin());
        rendezVous.setPatient(rendezVousDetails.getPatient());

        return rendezVousRepository.save(rendezVous);
    }

    @Override
    public void deleteRendezVous(Long id) {
        RendezVous rendezVous = rendezVousRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Rendez-vous not found for this id :: " + id));

        rendezVousRepository.delete(rendezVous);
    }
}
