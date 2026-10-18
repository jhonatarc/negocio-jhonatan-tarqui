-- Datos iniciales realistas

-- 3 Categorías
INSERT INTO categorias (nombre) VALUES 
('Electrónica'),
('Ropa'),
('Hogar');

-- 12 Productos
INSERT INTO productos (nombre, categoria_id, precio, stock) VALUES 
('Auriculares Bluetooth', 1, 150.00, 25),
('Teclado Mecánico', 1, 350.00, 4),
('Mouse Inalámbrico', 1, 120.00, 15),
('Monitor 24 pulgadas', 1, 1100.00, 2),
('Polera de Algodón', 2, 70.00, 50),
('Jeans Clásicos', 2, 180.00, 30),
('Chaqueta Térmica', 2, 320.00, 3),
('Zapatillas Deportivas', 2, 250.00, 12),
('Lámpara de Escritorio', 3, 90.00, 8),
('Cafetera de Goteo', 3, 220.00, 1),
('Juego de Sábanas', 3, 140.00, 20),
('Sartén Antiadherente', 3, 110.00, 10);

-- 6 Clientes (incluyendo 1 cliente sin pedidos para probar la consulta 7)
INSERT INTO clientes (nombre, telefono, email) VALUES 
('Carlos Mendoza', '71234567', 'carlos.mendoza@gmail.com'),
('Ana Gutierrez', '72345678', 'ana.gutierrez@hotmail.com'),
('Luis Mamani', '73456789', 'luis.mamani@yahoo.com'),
('Maria Flores', '74567890', 'maria.flores@gmail.com'),
('Jorge Quispe', '75678901', 'jorge.quispe@outlook.com'),
('Pedro Gomez', '76789012', 'pedro.gomez@gmail.com'); -- Cliente sin pedidos

-- 10 Pedidos
INSERT INTO pedidos (cliente_id, fecha, estado) VALUES 
(1, '2026-10-01 10:00:00', 'Entregado'),
(1, '2026-10-05 14:30:00', 'Entregado'),
(1, '2026-10-10 09:15:00', 'En proceso'),
(2, '2026-10-02 11:20:00', 'Entregado'),
(2, '2026-10-12 16:45:00', 'Enviado'),
(3, '2026-10-03 08:00:00', 'Entregado'),
(3, '2026-10-08 12:00:00', 'Entregado'),
(3, '2026-10-14 15:10:00', 'En proceso'),
(4, '2026-10-04 17:00:00', 'Entregado'),
(5, '2026-10-06 13:25:00', 'Cancelado');

-- 25 Líneas de detalle de pedido
INSERT INTO detalle_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES 
(1, 1, 1, 150.00),
(1, 3, 2, 120.00),
(2, 2, 1, 350.00),
(2, 5, 2, 70.00),
(3, 4, 1, 1100.00),
(3, 9, 1, 90.00),
(4, 6, 1, 180.00),
(4, 7, 1, 320.00),
(4, 8, 1, 250.00),
(5, 10, 1, 220.00),
(5, 12, 2, 110.00),
(6, 5, 3, 70.00),
(6, 11, 1, 140.00),
(7, 1, 2, 150.00),
(7, 2, 1, 350.00),
(7, 3, 1, 120.00),
(8, 6, 2, 180.00),
(8, 8, 1, 250.00),
(8, 9, 2, 90.00),
(9, 7, 1, 320.00),
(9, 10, 1, 220.00),
(10, 11, 2, 140.00),
(10, 12, 1, 110.00),
(10, 5, 1, 70.00),
(10, 1, 1, 150.00);