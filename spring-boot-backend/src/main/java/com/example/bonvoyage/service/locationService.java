package com.example.bonvoyage.service;

import com.example.bonvoyage.entity.locations;

import java.util.List;

public interface locationService {

    public locations saveLocation(locations location);

    public List<locations> fetchLocationList();

}
