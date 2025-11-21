package com.example.camisa

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class CamisaApplication

fun main(args: Array<String>) {
	// Forzar que Spring Boot use el puerto definido por Render en la variable de entorno PORT
	val port = System.getenv("PORT")?.toIntOrNull() ?: 8080
	val props = mapOf("server.port" to port)

	runApplication<CamisaApplication>(*args) {
		setDefaultProperties(props)
	}
}
