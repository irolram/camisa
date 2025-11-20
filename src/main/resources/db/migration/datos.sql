-- Insertar tipos de camisa
INSERT INTO tipos_camisa (nombre, descripcion) VALUES
                                                   ('Casual', 'Camisas informales para uso diario'),
                                                   ('Formal', 'Camisas elegantes para eventos o trabajo'),
                                                   ('Deportiva', 'Camisas diseñadas para actividad física'),
                                                   ('Playera', 'Camisetas de algodón de uso común');

-- Insertar camisas
INSERT INTO camisas (nombre, talla, color, precio, imagen_url, lat, lng, tipo_id) VALUES
                                                                                      ('Camisa Azul Casual', 'M', 'Azul', 29.99, 'https://example.com/azul.jpg', 40.4168, -3.7038, 1),
                                                                                      ('Camisa Blanca Formal', 'L', 'Blanco', 49.99, 'https://example.com/blanca.jpg', 41.3874, 2.1686, 2),
                                                                                      ('Camisa Deportiva Roja', 'S', 'Rojo', 35.50, 'https://example.com/roja.jpg', 39.4699, -0.3763, 3),
                                                                                      ('Playera Negra Básica', 'XL', 'Negro', 15.00, 'https://example.com/negra.jpg', NULL, NULL, 4);
