-- PRODUCTO
INSERT INTO Producto (id_producto, nombre, unidad_medida, descripcion, tipo_producto) VALUES
(1, 'Laptop Dell', 'Unidad', 'Laptop de oficina', 'Electrónico'),
(2, 'Mouse Logitech', 'Unidad', 'Mouse inalámbrico', 'Accesorio'),
(3, 'Teclado HP', 'Unidad', 'Teclado mecánico', 'Accesorio'),
(4, 'Monitor Samsung', 'Unidad', 'Monitor 24 pulgadas', 'Electrónico'),
(5, 'Silla Ergonómica', 'Unidad', 'Silla para oficina', 'Mobiliario'),
(6, 'Router TP-Link', 'Unidad', 'Router de alta velocidad', 'Electrónico'),
(7, 'Cable HDMI', 'Unidad', 'Cable HDMI 2 metros', 'Accesorio'),
(8, 'Tablet Lenovo', 'Unidad', 'Tablet de 10 pulgadas', 'Electrónico'),
(9, 'Proyector Epson', 'Unidad', 'Proyector HD', 'Electrónico'),
(10, 'Disco Duro Externo', 'Unidad', '1TB almacenamiento', 'Accesorio');
 
-- LOTE
INSERT INTO Lote (id_lote, id_producto, estado_producto) VALUES
(1, 1, 'Nuevo'),
(2, 2, 'Nuevo'),
(3, 3, 'Usado'),
(4, 4, 'Nuevo'),
(5, 5, 'Nuevo'),
(6, 6, 'Nuevo'),
(7, 7, 'Usado'),
(8, 8, 'Nuevo'),
(9, 9, 'Nuevo'),
(10, 10, 'Nuevo');

-- INVENTARIO
INSERT INTO Inventario (id_inventario, id_producto, stock_disponible, stock_reservado, stock_comprometido) VALUES
(1, 1, 50, 5, 3),
(2, 2, 200, 10, 5),
(3, 3, 150, 8, 4),
(4, 4, 40, 2, 1),
(5, 5, 60, 6, 2),
(6, 6, 80, 3, 1),
(7, 7, 100, 5, 2),
(8, 8, 35, 4, 2),
(9, 9, 15, 1, 1),
(10, 10, 120, 12, 6);

-- USUARIO
INSERT INTO Usuario (id_usuario, nombre_usuario, rol) VALUES
(1, 'Juan Pérez', 'Administrador'),
(2, 'Ana Torres', 'Supervisor'),
(3, 'Carlos López', 'Operador'),
(4, 'Marta Reyes', 'Supervisor'),
(5, 'Luis Gómez', 'Operador'),
(6, 'Elena Vargas', 'Administrador'),
(7, 'Sergio Díaz', 'Supervisor'),
(8, 'Laura Ramírez', 'Operador'),
(9, 'Fernando Castillo', 'Operador'),
(10, 'Paola Moreno', 'Supervisor');

-- UBICACION_ALMACEN
INSERT INTO Ubicacion_almacen (id_ubicacion, id_lote, id_usuario, capacidad_maxima, ubicacion) VALUES
(1, 1, 1, 1000, 'Pasillo A1'),
(2, 2, 2, 800, 'Pasillo A2'),
(3, 3, 3, 1200, 'Pasillo B1'),
(4, 4, 4, 500, 'Pasillo B2'),
(5, 5, 5, 700, 'Pasillo C1'),
(6, 6, 6, 1000, 'Pasillo C2'),
(7, 7, 7, 600, 'Pasillo D1'),
(8, 8, 8, 900, 'Pasillo D2'),
(9, 9, 9, 1100, 'Pasillo E1'),
(10, 10, 10, 1000, 'Pasillo E2');

-- MOVIMIENTO
INSERT INTO Movimiento (id_movimiento, id_inventario, id_usuario, cantidad, referencia_documento, tipo_movimiento, fecha_movimiento) VALUES
(1, 1, 1, 10, 'ORD001', 'Entrada', TO_DATE('2025-04-01', 'YYYY-MM-DD')),
(2, 2, 2, 5, 'ORD002', 'Salida', TO_DATE('2025-04-02', 'YYYY-MM-DD')),
(3, 3, 3, 8, 'ORD003', 'Entrada', TO_DATE('2025-04-03', 'YYYY-MM-DD')),
(4, 4, 4, 2, 'ORD004', 'Salida', TO_DATE('2025-04-04', 'YYYY-MM-DD')),
(5, 5, 5, 4, 'ORD005', 'Entrada', TO_DATE('2025-04-05', 'YYYY-MM-DD')),
(6, 6, 6, 6, 'ORD006', 'Salida', TO_DATE('2025-04-06', 'YYYY-MM-DD')),
(7, 7, 7, 9, 'ORD007', 'Entrada', TO_DATE('2025-04-07', 'YYYY-MM-DD')),
(8, 8, 8, 3, 'ORD008', 'Salida', TO_DATE('2025-04-08', 'YYYY-MM-DD')),
(9, 9, 9, 1, 'ORD009', 'Entrada', TO_DATE('2025-04-09', 'YYYY-MM-DD')),
(10, 10, 10, 7, 'ORD010', 'Salida', TO_DATE('2025-04-10', 'YYYY-MM-DD'));

-- ORDEN_DESPACHO
INSERT INTO Orden_despacho (id_orden, id_movimiento, cliente, estado, fecha_despacho) VALUES
(1, 2, 'Empresa A', 'Despachado', TO_DATE('2025-04-02', 'YYYY-MM-DD')),
(2, 4, 'Empresa B', 'Pendiente', TO_DATE('2025-04-04', 'YYYY-MM-DD')),
(3, 6, 'Empresa C', 'Despachado', TO_DATE('2025-04-06', 'YYYY-MM-DD')),
(4, 8, 'Empresa D', 'En proceso', TO_DATE('2025-04-08', 'YYYY-MM-DD')),
(5, 10, 'Empresa E', 'Pendiente', TO_DATE('2025-04-10', 'YYYY-MM-DD')),
(6, 1, 'Empresa F', 'Pendiente', TO_DATE('2025-04-01', 'YYYY-MM-DD')),
(7, 3, 'Empresa G', 'Despachado', TO_DATE('2025-04-03', 'YYYY-MM-DD')),
(8, 5, 'Empresa H', 'Pendiente', TO_DATE('2025-04-05', 'YYYY-MM-DD')),
(9, 7, 'Empresa I', 'Despachado', TO_DATE('2025-04-07', 'YYYY-MM-DD')),
(10, 9, 'Empresa J', 'En proceso', TO_DATE('2025-04-09', 'YYYY-MM-DD'));
