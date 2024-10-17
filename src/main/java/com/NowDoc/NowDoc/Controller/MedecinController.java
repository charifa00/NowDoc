package com.NowDoc.NowDoc.Controller;

import com.NowDoc.NowDoc.Entities.Medecin;
import com.NowDoc.NowDoc.service.MedecinService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class MedecinController {

  @Autowired
  MedecinService medecinService;

  @GetMapping("/sign_up")
  public String createMedecin() {
    return "createMedecin";
  }

  @PostMapping("/saveMedecin")
  public String saveMedecin(@ModelAttribute("medecin") Medecin medecin, ModelMap modelMap) {
    Medecin memo = medecinService.saveMedecin(medecin);
    String messageController = "Merci pour votre confiance ";
    modelMap.addAttribute("messagejsp", messageController);
    return "createMedecin";
  }


  @GetMapping("/connect")
  public String connectMedecin() {
    return "connect"; // Page de connexion
  }

  @GetMapping("/mon-profile")
  public String monProfil() {
    return "profil";
  }

  @RequestMapping("/medecins/sign_in")
  public String login(@RequestParam("email") String email,
                      @RequestParam("motDePasse") String motDePasse,
                      ModelMap modelMap) {
    Medecin medecin = medecinService.findByEmailAndMotDePasse(email, motDePasse);

    if (medecin != null) {
      modelMap.addAttribute("medecin", medecin);
      return "redirect:/mon-profile";
    } else {
      modelMap.addAttribute("error", "Email ou mot de passe incorrect");
      return "compte";
    }
  }

  @GetMapping("/medecins/recherche")
  public String afficherHome(@RequestParam(value = "specialite", required = false) String specialite,
                             @RequestParam(value = "ville", required = false) String ville,
                             ModelMap modelMap) {
    List<Medecin> medecins;

    if ((specialite != null && !specialite.isEmpty()) || (ville != null && !ville.isEmpty())) {
      medecins = medecinService.findBySpecialiteAndVille(specialite, ville);
    } else {
      medecins = medecinService.getAllMedecins();
    }

    modelMap.addAttribute("medecins", medecins);
    return "listMedecins";
  }




  @GetMapping("/medecins/sign_in")
  public String compte() {
    return "compte";
  }
}
