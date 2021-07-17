package com.example.bonvoyage.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class locations {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String latitude;

    private String longitude;

    private String name;

    private String description;
}
