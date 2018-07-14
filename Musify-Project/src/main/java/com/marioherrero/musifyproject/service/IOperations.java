package com.marioherrero.musifyproject.service;

import com.marioherrero.musifyproject.bean.Artist;
import com.marioherrero.musifyproject.bean.People;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Mario Herrero
 */
public interface IOperations {
    
    public void addArtist (Artist art);
    
    public Artist getArtist ();
    
    public ArrayList<String> getArrayListArtist();
    
    public ArrayList<String> getArrayListPeople();
}
