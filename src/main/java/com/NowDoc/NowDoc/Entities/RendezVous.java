package com.NowDoc.NowDoc.Entities;

import jakarta.persistence.*;
import java.time.LocalDateTime;

@Entity
public class RendezVous {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private LocalDateTime dateHeure;

    @ManyToOne
    private Medecin medecin;

    @ManyToOne
    private Patient patient;

    public RendezVous() {}

    public RendezVous(Long id, LocalDateTime dateHeure,   Medecin medecin, Patient patient) {
        this.id = id;
        this.dateHeure = dateHeure;

        this.medecin = medecin;
        this.patient = patient;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public LocalDateTime getDateHeure() {
        return dateHeure;
    }

    public void setDateHeure(LocalDateTime dateHeure) {
        this.dateHeure = dateHeure;
    }



    public Medecin getMedecin() {
        return medecin;
    }

    public void setMedecin(Medecin medecin) {
        this.medecin = medecin;
    }

    public Patient getPatient() {
        return patient;
    }

    public void setPatient(Patient patient) {
        this.patient = patient;
    }

    @Override
    public String toString() {
        return "RendezVous{" +
                "id=" + id +
                ", dateHeure=" + dateHeure +
                ", medecin=" + medecin +
                ", patient=" + patient +
                '}';
    }
}

