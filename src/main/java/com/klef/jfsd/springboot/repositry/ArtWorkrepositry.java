package com.klef.jfsd.springboot.repositry;

import org.springframework.data.jpa.repository.JpaRepository;

import com.klef.jfsd.springboot.model.ArtWork;

public interface ArtWorkrepositry extends JpaRepository<ArtWork, Integer>{

}
