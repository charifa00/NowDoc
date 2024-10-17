package com.NowDoc.NowDoc.Entities;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;


@Entity
public class Medecin {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String titre;
    private String prenom;
    private String nom;
    private String email;
    private String motDePasse;
    private String confirmationMotDePasse;
    private String specialites;
    private String numeroRueCabinet;
    private String pays;
    private String ville;
    private String numeroTelephoneCabinet;
    private String numeroPortable;
    private boolean estProfessionnelSante;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitre() {
        return titre;
    }

    public void setTitre(String titre) {
        this.titre = titre;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
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

    public String getSpecialites() {
        return specialites;
    }

    public void setSpecialites(String specialites) {
        this.specialites = specialites;
    }

    public String getNumeroRueCabinet() {
        return numeroRueCabinet;
    }

    public void setNumeroRueCabinet(String numeroRueCabinet) {
        this.numeroRueCabinet = numeroRueCabinet;
    }

    public String getPays() {
        return pays;
    }

    public void setPays(String pays) {
        this.pays = pays;
    }

    public String getVille() {
        return ville;
    }

    public void setVille(String ville) {
        this.ville = ville;
    }

    public String getNumeroTelephoneCabinet() {
        return numeroTelephoneCabinet;
    }

    public void setNumeroTelephoneCabinet(String numeroTelephoneCabinet) {
        this.numeroTelephoneCabinet = numeroTelephoneCabinet;
    }

    public String getNumeroPortable() {
        return numeroPortable;
    }

    public void setNumeroPortable(String numeroPortable) {
        this.numeroPortable = numeroPortable;
    }

    public boolean isEstProfessionnelSante() {
        return estProfessionnelSante;
    }

    public void setEstProfessionnelSante(boolean estProfessionnelSante) {
        this.estProfessionnelSante = estProfessionnelSante;
    }

    public Medecin() {
    }

    public Medecin(Long id, String titre, String prenom, String nom, String email, String motDePasse, String confirmationMotDePasse, String specialites, String numeroRueCabinet, String pays, String ville, String numeroTelephoneCabinet, String numeroPortable, boolean estProfessionnelSante) {
        this.id = id;
        this.titre = titre;
        this.prenom = prenom;
        this.nom = nom;
        this.email = email;
        this.motDePasse = motDePasse;
        this.confirmationMotDePasse = confirmationMotDePasse;
        this.specialites = specialites;
        this.numeroRueCabinet = numeroRueCabinet;
        this.pays = pays;
        this.ville = ville;
        this.numeroTelephoneCabinet = numeroTelephoneCabinet;
        this.numeroPortable = numeroPortable;
        this.estProfessionnelSante = estProfessionnelSante;
    }

    @Override
    public String toString() {
        return "Medecin{" +
                "id=" + id +
                ", titre='" + titre + '\'' +
                ", prenom='" + prenom + '\'' +
                ", nom='" + nom + '\'' +
                ", email='" + email + '\'' +
                ", motDePasse='" + motDePasse + '\'' +
                ", confirmationMotDePasse='" + confirmationMotDePasse + '\'' +
                ", specialites='" + specialites + '\'' +
                ", numeroRueCabinet='" + numeroRueCabinet + '\'' +
                ", pays='" + pays + '\'' +
                ", ville='" + ville + '\'' +
                ", numeroTelephoneCabinet='" + numeroTelephoneCabinet + '\'' +
                ", numeroPortable='" + numeroPortable + '\'' +
                ", estProfessionnelSante=" + estProfessionnelSante +
                '}';
    }
}
