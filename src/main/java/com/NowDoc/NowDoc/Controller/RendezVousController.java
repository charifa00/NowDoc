package com.NowDoc.NowDoc.Controller;

import com.NowDoc.NowDoc.Entities.Medecin;
import com.NowDoc.NowDoc.Entities.Patient;
import com.NowDoc.NowDoc.Entities.RendezVous;
import com.NowDoc.NowDoc.service.MedecinService;
import com.NowDoc.NowDoc.service.PatientService;
import com.NowDoc.NowDoc.service.RendezVousService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;


@Controller
public class RendezVousController {

    @Autowired
    private RendezVousService rendezVousService;
    @Autowired
    private MedecinService medecinService;
    @Autowired
    private PatientService patientService;



    @GetMapping("/medecins/ajouterRendezVous")
    public String ajouterRendezVous(@RequestParam("medecinId") Long medecinId, ModelMap modelMap) {
        Medecin medecin = medecinService.getMedecin(medecinId);
        modelMap.addAttribute("medecin", medecin);
        modelMap.addAttribute("rendezVous", new RendezVous());
        return "ajouterRendezVous";
    }

    @PostMapping("/saveRendezVous")
    public String saveRendezVous(@ModelAttribute("rendezVous") RendezVous rendezVous,
                                 @RequestParam("prenom") String prenom,
                                 @RequestParam("email") String email,
                                 @RequestParam("numeroPortable") String numeroPortable,
                                 @RequestParam("nomdefamille") String nomdefamille,
                                 ModelMap modelMap) {
        Medecin medecin = medecinService.getMedecin(rendezVous.getMedecin().getId());

        Patient patient = patientService.findByEmail(email);
        if (patient == null) {
            patient = new Patient();
            patient.setNomdefamille(nomdefamille);
            patient.setPrenom(prenom);
            patient.setEmail(email);
            patient.setNumeroPortable(numeroPortable);

            patient = patientService.savePatient(patient);
        }
        rendezVous.setMedecin(medecin);
        rendezVous.setPatient(patient);
        RendezVous savedRendezVous = rendezVousService.saveRendezVous(rendezVous);
        String messageController = "Le rendez-vous a été créé avec succès.";
        modelMap.addAttribute("messagejsp", messageController);
        return "ajouterRendezVous";
    }
}
