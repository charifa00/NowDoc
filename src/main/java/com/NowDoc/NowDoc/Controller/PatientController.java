package com.NowDoc.NowDoc.Controller;


import com.NowDoc.NowDoc.Entities.Patient;
import com.NowDoc.NowDoc.service.PatientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class PatientController {
    @Autowired
    PatientService patientService;

    @GetMapping("/users/sign_up")
    public String createPatient(){
        return "createpatient";
    }

    @RequestMapping("/savePatient")
    public String savePatient(@ModelAttribute("patient") Patient patient, ModelMap modelMap) {
        Patient memo = patientService.savePatient(patient);
        String messagecontorller = "Merci pour votre confiance ";
        modelMap.addAttribute("messagejsp",messagecontorller);
        return "createpatient";
    }

    @GetMapping("/ma")
    public String home(){
        return "home";
    }


}
