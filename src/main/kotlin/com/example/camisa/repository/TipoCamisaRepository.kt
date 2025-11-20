package com.example.camisa.repository

import com.example.camisa.domain.TipoCamisa
import org.springframework.data.jpa.repository.JpaRepository

interface TipoCamisaRepository : JpaRepository<TipoCamisa, Long> {
    fun existsByNombreIgnoreCase(nombre: String): Boolean
}
