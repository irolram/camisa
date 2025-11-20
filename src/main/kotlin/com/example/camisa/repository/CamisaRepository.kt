package com.example.camisa.repository

import com.example.camisa.domain.Camisa
import org.springframework.data.jpa.repository.JpaRepository

interface CamisaRepository : JpaRepository<Camisa, Long>
