package com.klef.jfsd.springboot.repositry;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Artist;

@Repository
public interface ArtistRepositry extends JpaRepository<Artist, String> {
    @Query("select a from Artist a where a.username=?1 and a.password=?2")
    public Artist CheckArtistLogin(String username, String password);
}
