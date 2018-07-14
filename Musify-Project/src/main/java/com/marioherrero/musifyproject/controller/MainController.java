package com.marioherrero.musifyproject.controller;

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
public class MainController {

    /**
     * Muestra la pagina de inicio.
     *
     * @param model Objeto de Spring para la carga de atributos.
     * @param request Objeto que contiene todas las propiedades de la llamada.
     * @return String Nombre de la vista.
     */
    @RequestMapping({"/", "/index"})
    public String showHomePage(Model model, HttpServletRequest request) {

        model.addAttribute("Welcome", "Musify for All!!");
        model.addAttribute("Author", "Mario Alberto Herrero Castillo in a Hiberus Tech Exercice, ");
        model.addAttribute("Year", "2018");
        model.addAttribute("Content", "Access to Musify Project Example");

        return "index";
    }
}
