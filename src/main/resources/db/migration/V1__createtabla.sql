-- Elimina tablas si existen
DROP TABLE IF EXISTS flyway_schema_history CASCADE;
DROP TABLE IF EXISTS camisas CASCADE;
DROP TABLE IF EXISTS tipos_camisa CASCADE;

-- Tabla de tipos de camisa
CREATE TABLE tipos_camisa (
                              id BIGSERIAL PRIMARY KEY,
                              nombre VARCHAR(100) NOT NULL UNIQUE,
                              descripcion TEXT
);

-- Tabla de camisas
CREATE TABLE camisas (
                         id BIGSERIAL PRIMARY KEY,
                         nombre VARCHAR(120) NOT NULL,
                         talla VARCHAR(10),
                         color VARCHAR(20),
                         precio NUMERIC,
                         imagen_url TEXT,
                         lat DOUBLE PRECISION,
                         lng DOUBLE PRECISION,
                         tipo_id BIGINT NOT NULL REFERENCES tipos_camisa(id)
);
