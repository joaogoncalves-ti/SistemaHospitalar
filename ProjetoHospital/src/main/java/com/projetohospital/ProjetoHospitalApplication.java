package com.projetohospital;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;


// Todos as pastas por ex: aspect, config, entity etc... serão executados junto ao main


@SpringBootApplication
public class ProjetoHospitalApplication {

    public static void main(String[] args) {
        SpringApplication.run(ProjetoHospitalApplication.class, args);
    }
}
