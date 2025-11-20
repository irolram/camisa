-- Crear tabla tipos_camisa
CREATE TABLE tipos_camisa (
                              id SERIAL PRIMARY KEY,
                              nombre VARCHAR(100) NOT NULL UNIQUE,
                              descripcion TEXT
);

-- Crear tabla camisas
CREATE TABLE camisas (
                         id SERIAL PRIMARY KEY,
                         nombre VARCHAR(120) NOT NULL,
                         talla VARCHAR(255),
                         color VARCHAR(255),
                         precio NUMERIC(10,2),
                         imagen_url VARCHAR(255),
                         lat DOUBLE PRECISION,
                         lng DOUBLE PRECISION,
                         tipo_id BIGINT NOT NULL,
                         CONSTRAINT fk_camisa_tipo
                             FOREIGN KEY (tipo_id) REFERENCES tipos_camisa(id)
);
