package com.example.bonvoyage.controller;


import com.example.bonvoyage.entity.locations;
import com.example.bonvoyage.service.locationServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;



@RestController
public class locationsController {

    @Autowired
    private locationServiceImpl locationService;


    // Add new location and fetch it back
    @PostMapping("/location/")
    public locations saveLocation(@Valid @RequestBody locations location){
        return locationService.saveLocation(location);
    }

    // Get all locations from database
    @GetMapping("/location/")
    public List<locations> fetchLocationList(){
        return locationService.fetchLocationList();
    }

}
