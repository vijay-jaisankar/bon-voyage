package com.example.bonvoyage.repository;

import com.example.bonvoyage.entity.locations;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface locationRepository extends JpaRepository<locations, Long> {
}
