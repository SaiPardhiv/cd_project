package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.ArtWork;
import com.klef.jfsd.springboot.model.Artist;
import com.klef.jfsd.springboot.repositry.ArtWorkrepositry;
import com.klef.jfsd.springboot.repositry.ArtistRepositry;
@Service
public class ArtistServiceImpl implements ArtistService {
    @Autowired
    private ArtistRepositry artistRepositry;
    
    @Autowired
    private ArtWorkrepositry artWorkrepositry;

    @Override
    public String ArtistRegistration(Artist artist) {
        artistRepositry.save(artist);
        return "Artist Registered Successfully";
    }

    @Override
    public Artist CheckArtistLogin(String username, String password) {
        return artistRepositry.CheckArtistLogin(username, password);
    }

	@Override
	public String updateartist(Artist a) {
		Artist at = artistRepositry.findById(a.getUsername()).get();
		at.setContact(a.getContact());
		at.setAge(a.getAge());
		at.setExperience(a.getExperience());
		at.setPassword(a.getPassword());
		at.setStatus(a.getStatus());
		
		artistRepositry.save(at);
		return "Artist Updated Succefully";
	}

	@Override
	public String artupload(ArtWork aw) {
		artWorkrepositry.save(aw);
		return "Art Uploaded Successfully";
	}

	@Override
	public List<ArtWork> ViewAllArts() {
		return (List<ArtWork>) artWorkrepositry.findAll();
	}

	@Override
	public ArtWork ViewArtByID(int artid) {
		return artWorkrepositry.findById(artid).get();
	}

	

}

