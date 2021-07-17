package com.example.bonvoyage.service;

import com.example.bonvoyage.entity.locations;
import com.example.bonvoyage.repository.locationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class locationServiceImpl implements locationService {

    @Autowired
    private locationRepository locRep;

    @Override
    public locations saveLocation(locations location) {
        return locRep.save(location);
    }

    @Override
    public List<locations> fetchLocationList() {
        return locRep.findAll();
    }
}
