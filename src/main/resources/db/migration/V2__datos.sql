-- Insertar tipos de camisa
INSERT INTO tipos_camisa (nombre, descripcion)
VALUES
    ('Casual', 'Camisas informales para uso diario'),
    ('Formal', 'Camisas para oficina y eventos formales'),
    ('Deportivo', 'Camisas para hacer deporte');

-- Insertar camisas
INSERT INTO camisas (nombre, talla, color, precio, imagen_url, lat, lng, tipo_id)
VALUES
    ('Camisa Azul Casual', 'M', 'Azul', 29.99, 'http://example.com/azul.jpg', 40.4168, -3.7038, 1),
    ('Camisa Blanca Formal', 'L', 'Blanco', 49.99, 'http://example.com/blanca.jpg', 40.4168, -3.7038, 2),
    ('Camisa Deportiva Roja', 'S', 'Rojo', 39.99, 'http://example.com/roja.jpg', 40.4168, -3.7038, 3);
