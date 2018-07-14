package com.marioherrero.musifyproject.controller;

import com.marioherrero.musifyproject.service.OperationsService;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Mario Herrero Castillo
 * @ https://www.blaisantka.com
 */

@Controller
public class ApplicationEnterController {
    
    @RequestMapping("/registerApplication")
    public String registerApp (Model model) {
        
        model.addAttribute("Year", "2018");
        model.addAttribute("Author", "Mario Alberto Herrero Castillo in a Hiberus Tech Exercice, ");
        
        return "musify-dashboard";
    }
}
