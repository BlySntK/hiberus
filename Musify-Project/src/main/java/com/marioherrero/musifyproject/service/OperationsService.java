package com.marioherrero.musifyproject.service;

import com.marioherrero.musifyproject.bean.Artist;
import com.marioherrero.musifyproject.bean.People;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Service;

/**
 *
 * @author Mario Herrero Castillo
 * @ https://www.blaisantka.com
 */
@Service
public class OperationsService implements IOperations {
    
    private Artist oneA;
    private People oneP;
    private ArrayList<Artist> oneArt;
    private ArrayList<String> tableArtist = new ArrayList<String>();
    private ArrayList<String> tablePeople = new ArrayList<String>();
    
    public OperationsService () {}
    
    @Override
    public ArrayList<String> getArrayListArtist() {
        return tableArtist;
    }
    
    @Override
    public ArrayList<String> getArrayListPeople() {
        return tablePeople;
    }
    
    @Override
    public void addArtist(Artist art) {
        oneA = art;
        oneArt = new ArrayList<Artist> ();
        oneArt.add(oneA);
    }
    
    @Override
    public Artist getArtist () {
        for (Artist art : oneArt) {
            return art;
        }
        return null;
    }
}
