package com.NowDoc.NowDoc.Entities;


import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;



@Entity
public class Patient {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String prenom;

    private String nomdefamille;


    private String email;

    private String pays;

    private String motDePasse;

    private String confirmationMotDePasse;

    private String numeroPortable;

    private Boolean lesconditiondutlisation;

    public Patient() {
    }

    public Patient(Long id, String prenom, String nomdefamille, String email, String pays, String motDePasse, String confirmationMotDePasse, String numeroPortable, boolean lesconditiondutlisation) {
        this.id = id;
        this.prenom = prenom;
        this.nomdefamille = nomdefamille;
        this.email = email;
        this.pays = pays;
        this.motDePasse = motDePasse;
        this.confirmationMotDePasse = confirmationMotDePasse;
        this.numeroPortable = numeroPortable;
        this.lesconditiondutlisation = lesconditiondutlisation;
    }

    @Override
    public String toString() {
        return "Patient{" +
                "id=" + id +
                ", prenom='" + prenom + '\'' +
                ", nomdefamille='" + nomdefamille + '\'' +
                ", email='" + email + '\'' +
                ", pays='" + pays + '\'' +
                ", motDePasse='" + motDePasse + '\'' +
                ", confirmationMotDePasse='" + confirmationMotDePasse + '\'' +
                ", numeroPortable='" + numeroPortable + '\'' +
                ", estProfessionnelSante=" + lesconditiondutlisation +
                '}';
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getNomdefamille() {
        return nomdefamille;
    }

    public void setNomdefamille(String nomdefamille) {
        this.nomdefamille = nomdefamille;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPays() {
        return pays;
    }

    public void setPays(String pays) {
        this.pays = pays;
    }

    public String getMotDePasse() {
        return motDePasse;
    }

    public void setMotDePasse(String motDePasse) {
        this.motDePasse = motDePasse;
    }

    public String getConfirmationMotDePasse() {
        return confirmationMotDePasse;
    }

    public void setConfirmationMotDePasse(String confirmationMotDePasse) {
        this.confirmationMotDePasse = confirmationMotDePasse;
    }

    public String getNumeroPortable() {
        return numeroPortable;
    }

    public void setNumeroPortable(String numeroPortable) {
        this.numeroPortable = numeroPortable;
    }

    public Boolean getLesconditiondutlisation() {
        return lesconditiondutlisation;
    }

    public void setLesconditiondutlisation(Boolean lesconditiondutlisation) {
        this.lesconditiondutlisation = lesconditiondutlisation;
    }
}
