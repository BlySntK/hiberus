package com.marioherrero.musifyproject.controller;

import com.marioherrero.musifyproject.bean.Artist;
import com.marioherrero.musifyproject.bean.People;
import java.util.ArrayList;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.marioherrero.musifyproject.service.OperationsService;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author Mario Herrero Castillo
 * @ https://www.blaisantka.com
 */

@Controller
public class OperationsController {
    
    private OperationsService os = new OperationsService();
    Artist oneArt = new Artist ();
    ArrayList<String> tablaArtist;
   
    @RequestMapping("/registerArtist")
    public String registerArtist (@ModelAttribute Artist art, Model model) {        
        
        oneArt.setId(art.getId());
        oneArt.setName(art.getName());
        oneArt.setYears(art.getYears());
        oneArt.setMember(art.getMember());
        oneArt.setStyle(art.getStyle());
        os.addArtist(oneArt);
        model.addAttribute("artist", os.getArtist());
        if (tablaArtist == null) {
            tablaArtist = os.getArrayListArtist();
        }
        model.addAttribute("tabla", tablaArtist);
        
        model.addAttribute("Year", "2018");
        model.addAttribute("Author", "Mario Alberto Herrero Castillo in a Hiberus Tech Exercice, ");
        
        return "musify-dashboard";
    }
    
    @RequestMapping("/registerPeople")
    @ResponseBody
    public String registerPeople (@ModelAttribute People people, Model model) {
            
        StringBuilder sb = new StringBuilder();
        sb.append(people.getId());
        sb.append(",");
        sb.append(people.getName());
        sb.append(",");
        sb.append(people.getAge());
        
        model.addAttribute("Year", "2018");
        model.addAttribute("Author", "Mario Alberto Herrero Castillo in a Hiberus Tech Exercice, ");
        
        return sb.toString();
    }
    
    @RequestMapping("/asignToMembers")
    public String asingToMembers (@ModelAttribute People people, Model model) {
        
        ArrayList<String> members = new ArrayList<String>();
        members.add(oneArt.getMember() + ", " + people.getName());
        oneArt.setMembers(members);
        model.addAttribute("members", oneArt.getMembers());
        
        model.addAttribute("Year", "2018");
        model.addAttribute("Author", "Mario Alberto Herrero Castillo in a Hiberus Tech Exercice, ");
        
        return "musify-dashboard";
    }
    
    @RequestMapping("/dropArtist")
    public String dropArtist (int id, Model model) {
        
        String _id = String.valueOf(id);
        String fila = "";
        for (int i = 0; i < tablaArtist.size(); i++) {
            fila = tablaArtist.get(i).toString();
            if (fila.contains(_id)) {
                tablaArtist.clear();
            }
        }
        
        model.addAttribute("tabla", tablaArtist);
        
        model.addAttribute("Year", "2018");
        model.addAttribute("Author", "Mario Alberto Herrero Castillo in a Hiberus Tech Exercice, ");
        
        return "musify-dashboard";
    }
}

