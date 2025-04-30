# 7.3. Carga Masiva de Datos

Sample content for section 7.3.


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
(9, 'Proyector Epson', 'Unidad', 'Proyector de alta definición', 'Electrónico'),
(10, 'Disco Duro Externo', 'Unidad', '1TB almacenamiento', 'Accesorio'),
(11, 'Auriculares Sony', 'Unidad', 'Auriculares bluetooth', 'Accesorio'),
(12, 'Cámara Web Logitech', 'Unidad', 'Cámara HD', 'Accesorio'),
(13, 'Impresora HP', 'Unidad', 'Impresora multifuncional', 'Electrónico'),
(14, 'Escritorio', 'Unidad', 'Escritorio de oficina', 'Mobiliario'),
(15, 'Batería portátil', 'Unidad', 'Batería externa 10000mAh', 'Accesorio'),
(16, 'Servidor Dell', 'Unidad', 'Servidor rack', 'Electrónico'),
(17, 'Switch Cisco', 'Unidad', 'Switch de red 24 puertos', 'Electrónico'),
(18, 'Extensor Wifi', 'Unidad', 'Amplificador de señal', 'Electrónico'),
(19, 'Pizarra Blanca', 'Unidad', 'Pizarra de reuniones', 'Mobiliario'),
(20, 'Lámpara LED', 'Unidad', 'Lámpara de escritorio', 'Mobiliario');
(21, 'Producto 21', 'Unidad', 'Descripción del producto 21', 'Accesorio'),
(22, 'Producto 22', 'Unidad', 'Descripción del producto 22', 'Mobiliario'),
(23, 'Producto 23', 'Unidad', 'Descripción del producto 23', 'Electrónico'),
(24, 'Producto 24', 'Unidad', 'Descripción del producto 24', 'Accesorio'),
(25, 'Producto 25', 'Unidad', 'Descripción del producto 25', 'Mobiliario'),
(26, 'Producto 26', 'Unidad', 'Descripción del producto 26', 'Electrónico'),
(27, 'Producto 27', 'Unidad', 'Descripción del producto 27', 'Accesorio'),
(28, 'Producto 28', 'Unidad', 'Descripción del producto 28', 'Mobiliario'),
(29, 'Producto 29', 'Unidad', 'Descripción del producto 29', 'Electrónico'),
(30, 'Producto 30', 'Unidad', 'Descripción del producto 30', 'Accesorio'),
(31, 'Producto 31', 'Unidad', 'Descripción del producto 31', 'Mobiliario'),
(32, 'Producto 32', 'Unidad', 'Descripción del producto 32', 'Electrónico'),
(33, 'Producto 33', 'Unidad', 'Descripción del producto 33', 'Accesorio'),
(34, 'Producto 34', 'Unidad', 'Descripción del producto 34', 'Mobiliario'),
(35, 'Producto 35', 'Unidad', 'Descripción del producto 35', 'Electrónico'),
(36, 'Producto 36', 'Unidad', 'Descripción del producto 36', 'Accesorio'),
(37, 'Producto 37', 'Unidad', 'Descripción del producto 37', 'Mobiliario'),
(38, 'Producto 38', 'Unidad', 'Descripción del producto 38', 'Electrónico'),
(39, 'Producto 39', 'Unidad', 'Descripción del producto 39', 'Accesorio'),
(40, 'Producto 40', 'Unidad', 'Descripción del producto 40', 'Mobiliario'),
(41, 'Producto 41', 'Unidad', 'Descripción del producto 41', 'Electrónico'),
(42, 'Producto 42', 'Unidad', 'Descripción del producto 42', 'Accesorio'),
(43, 'Producto 43', 'Unidad', 'Descripción del producto 43', 'Mobiliario'),
(44, 'Producto 44', 'Unidad', 'Descripción del producto 44', 'Electrónico'),
(45, 'Producto 45', 'Unidad', 'Descripción del producto 45', 'Accesorio'),
(46, 'Producto 46', 'Unidad', 'Descripción del producto 46', 'Mobiliario'),
(47, 'Producto 47', 'Unidad', 'Descripción del producto 47', 'Electrónico'),
(48, 'Producto 48', 'Unidad', 'Descripción del producto 48', 'Accesorio'),
(49, 'Producto 49', 'Unidad', 'Descripción del producto 49', 'Mobiliario'),
(50, 'Producto 50', 'Unidad', 'Descripción del producto 50', 'Electrónico');

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
(10, 10, 'Nuevo'),
(11, 11, 'Nuevo'),
(12, 12, 'Usado'),
(13, 13, 'Nuevo'),
(14, 14, 'Nuevo'),
(15, 15, 'Usado'),
(16, 16, 'Nuevo'),
(17, 17, 'Nuevo'),
(18, 18, 'Nuevo'),
(19, 19, 'Nuevo'),
(20, 20, 'Usado');
(21, 21, 'Usado'),
(22, 22, 'Nuevo'),
(23, 23, 'Usado'),
(24, 24, 'Nuevo'),
(25, 25, 'Usado'),
(26, 26, 'Nuevo'),
(27, 27, 'Usado'),
(28, 28, 'Nuevo'),
(29, 29, 'Usado'),
(30, 30, 'Nuevo'),
(31, 31, 'Usado'),
(32, 32, 'Nuevo'),
(33, 33, 'Usado'),
(34, 34, 'Nuevo'),
(35, 35, 'Usado'),
(36, 36, 'Nuevo'),
(37, 37, 'Usado'),
(38, 38, 'Nuevo'),
(39, 39, 'Usado'),
(40, 40, 'Nuevo'),
(41, 41, 'Usado'),
(42, 42, 'Nuevo'),
(43, 43, 'Usado'),
(44, 44, 'Nuevo'),
(45, 45, 'Usado'),
(46, 46, 'Nuevo'),
(47, 47, 'Usado'),
(48, 48, 'Nuevo'),
(49, 49, 'Usado'),
(50, 50, 'Nuevo');

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
(10, 10, 120, 12, 6),
(11, 11, 90, 5, 3),
(12, 12, 75, 2, 2),
(13, 13, 30, 2, 1),
(14, 14, 25, 1, 1),
(15, 15, 130, 7, 3),
(16, 16, 20, 2, 1),
(17, 17, 60, 4, 2),
(18, 18, 45, 3, 2),
(19, 19, 10, 0, 0),
(20, 20, 55, 5, 3);
(21, 21, 40, 3, 1),
(22, 22, 90, 6, 2),
(23, 23, 70, 4, 2),
(24, 24, 60, 5, 3),
(25, 25, 55, 2, 1),
(26, 26, 100, 7, 3),
(27, 27, 80, 5, 2),
(28, 28, 65, 3, 1),
(29, 29, 85, 6, 2),
(30, 30, 45, 2, 1),
(31, 31, 75, 4, 2),
(32, 32, 95, 5, 3),
(33, 33, 50, 3, 1),
(34, 34, 88, 4, 2),
(35, 35, 70, 6, 2),
(36, 36, 60, 2, 1),
(37, 37, 92, 5, 3),
(38, 38, 78, 4, 2),
(39, 39, 66, 3, 1),
(40, 40, 80, 4, 2),
(41, 41, 30, 2, 1),
(42, 42, 100, 7, 3),
(43, 43, 45, 2, 1),
(44, 44, 90, 6, 2),
(45, 45, 65, 4, 2),
(46, 46, 55, 3, 1),
(47, 47, 85, 5, 2),
(48, 48, 77, 4, 2),
(49, 49, 60, 2, 1),
(50, 50, 95, 6, 2);


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
(10, 10, 10, 1000, 'Pasillo E2'),
(11, 11, 11, 950, 'Pasillo F1'),
(12, 12, 12, 850, 'Pasillo F2'),
(13, 13, 13, 400, 'Pasillo G1'),
(14, 14, 14, 1300, 'Pasillo G2'),
(15, 15, 15, 750, 'Pasillo H1'),
(16, 16, 16, 1250, 'Pasillo H2'),
(17, 17, 17, 950, 'Pasillo I1'),
(18, 18, 18, 650, 'Pasillo I2'),
(19, 19, 19, 700, 'Pasillo J1'),
(20, 20, 20, 1050, 'Pasillo J2');
(21, 1, 21, 1000, 'Pasillo K1'),
(22, 2, 22, 800, 'Pasillo K2'),
(23, 3, 23, 1200, 'Pasillo L1'),
(24, 4, 24, 500, 'Pasillo L2'),
(25, 5, 25, 700, 'Pasillo M1'),
(26, 6, 26, 1000, 'Pasillo M2'),
(27, 7, 27, 600, 'Pasillo N1'),
(28, 8, 28, 900, 'Pasillo N2'),
(29, 9, 29, 1100, 'Pasillo O1'),
(30, 10, 30, 1000, 'Pasillo O2'),
(31, 11, 31, 950, 'Pasillo P1'),
(32, 12, 32, 850, 'Pasillo P2'),
(33, 13, 33, 400, 'Pasillo Q1'),
(34, 14, 34, 1300, 'Pasillo Q2'),
(35, 15, 35, 750, 'Pasillo R1'),
(36, 16, 36, 1250, 'Pasillo R2'),
(37, 17, 37, 950, 'Pasillo S1'),
(38, 18, 38, 650, 'Pasillo S2'),
(39, 19, 39, 700, 'Pasillo T1'),
(40, 20, 40, 1050, 'Pasillo T2'),
(41, 1, 41, 800, 'Pasillo U1'),
(42, 2, 42, 1000, 'Pasillo U2'),
(43, 3, 43, 1100, 'Pasillo V1'),
(44, 4, 44, 850, 'Pasillo V2'),
(45, 5, 45, 1200, 'Pasillo W1'),
(46, 6, 46, 700, 'Pasillo W2'),
(47, 7, 47, 950, 'Pasillo X1'),
(48, 8, 48, 600, 'Pasillo X2'),
(49, 9, 49, 1000, 'Pasillo Y1'),
(50, 10, 50, 900, 'Pasillo Y2');

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
(10, 10, 10, 7, 'ORD010', 'Salida', TO_DATE('2025-04-10', 'YYYY-MM-DD')),
(11, 11, 11, 5, 'ORD011', 'Entrada', TO_DATE('2025-04-11', 'YYYY-MM-DD')),
(12, 12, 12, 2, 'ORD012', 'Salida', TO_DATE('2025-04-12', 'YYYY-MM-DD')),
(13, 13, 13, 4, 'ORD013', 'Entrada', TO_DATE('2025-04-13', 'YYYY-MM-DD')),
(14, 14, 14, 1, 'ORD014', 'Salida', TO_DATE('2025-04-14', 'YYYY-MM-DD')),
(15, 15, 15, 6, 'ORD015', 'Entrada', TO_DATE('2025-04-15', 'YYYY-MM-DD')),
(16, 16, 16, 2, 'ORD016', 'Salida', TO_DATE('2025-04-16', 'YYYY-MM-DD')),
(17, 17, 17, 3, 'ORD017', 'Entrada', TO_DATE('2025-04-17', 'YYYY-MM-DD')),
(18, 18, 18, 4, 'ORD018', 'Salida', TO_DATE('2025-04-18', 'YYYY-MM-DD')),
(19, 19, 19, 5, 'ORD019', 'Entrada', TO_DATE('2025-04-19', 'YYYY-MM-DD')),
(20, 20, 20, 7, 'ORD020', 'Salida', TO_DATE('2025-04-20', 'YYYY-MM-DD'));
(21, 1, 21, 12, 'ORD021', 'Entrada', TO_DATE('2025-04-21', 'YYYY-MM-DD')),
(22, 2, 22, 6, 'ORD022', 'Salida', TO_DATE('2025-04-22', 'YYYY-MM-DD')),
(23, 3, 23, 9, 'ORD023', 'Entrada', TO_DATE('2025-04-23', 'YYYY-MM-DD')),
(24, 4, 24, 3, 'ORD024', 'Salida', TO_DATE('2025-04-24', 'YYYY-MM-DD')),
(25, 5, 25, 7, 'ORD025', 'Entrada', TO_DATE('2025-04-25', 'YYYY-MM-DD')),
(26, 6, 26, 5, 'ORD026', 'Salida', TO_DATE('2025-04-26', 'YYYY-MM-DD')),
(27, 7, 27, 11, 'ORD027', 'Entrada', TO_DATE('2025-04-27', 'YYYY-MM-DD')),
(28, 8, 28, 4, 'ORD028', 'Salida', TO_DATE('2025-04-28', 'YYYY-MM-DD')),
(29, 9, 29, 2, 'ORD029', 'Entrada', TO_DATE('2025-04-29', 'YYYY-MM-DD')),
(30, 10, 30, 6, 'ORD030', 'Salida', TO_DATE('2025-04-30', 'YYYY-MM-DD')),
(31, 11, 31, 7, 'ORD031', 'Entrada', TO_DATE('2025-05-01', 'YYYY-MM-DD')),
(32, 12, 32, 3, 'ORD032', 'Salida', TO_DATE('2025-05-02', 'YYYY-MM-DD')),
(33, 13, 33, 6, 'ORD033', 'Entrada', TO_DATE('2025-05-03', 'YYYY-MM-DD')),
(34, 14, 34, 2, 'ORD034', 'Salida', TO_DATE('2025-05-04', 'YYYY-MM-DD')),
(35, 15, 35, 8, 'ORD035', 'Entrada', TO_DATE('2025-05-05', 'YYYY-MM-DD')),
(36, 16, 36, 3, 'ORD036', 'Salida', TO_DATE('2025-05-06', 'YYYY-MM-DD')),
(37, 17, 37, 5, 'ORD037', 'Entrada', TO_DATE('2025-05-07', 'YYYY-MM-DD')),
(38, 18, 38, 6, 'ORD038', 'Salida', TO_DATE('2025-05-08', 'YYYY-MM-DD')),
(39, 19, 39, 4, 'ORD039', 'Entrada', TO_DATE('2025-05-09', 'YYYY-MM-DD')),
(40, 20, 40, 9, 'ORD040', 'Salida', TO_DATE('2025-05-10', 'YYYY-MM-DD')),
(41, 1, 41, 6, 'ORD041', 'Entrada', TO_DATE('2025-05-11', 'YYYY-MM-DD')),
(42, 2, 42, 3, 'ORD042', 'Salida', TO_DATE('2025-05-12', 'YYYY-MM-DD')),
(43, 3, 43, 10, 'ORD043', 'Entrada', TO_DATE('2025-05-13', 'YYYY-MM-DD')),
(44, 4, 44, 4, 'ORD044', 'Salida', TO_DATE('2025-05-14', 'YYYY-MM-DD')),
(45, 5, 45, 9, 'ORD045', 'Entrada', TO_DATE('2025-05-15', 'YYYY-MM-DD')),
(46, 6, 46, 2, 'ORD046', 'Salida', TO_DATE('2025-05-16', 'YYYY-MM-DD')),
(47, 7, 47, 6, 'ORD047', 'Entrada', TO_DATE('2025-05-17', 'YYYY-MM-DD')),
(48, 8, 48, 3, 'ORD048', 'Salida', TO_DATE('2025-05-18', 'YYYY-MM-DD')),
(49, 9, 49, 5, 'ORD049', 'Entrada', TO_DATE('2025-05-19', 'YYYY-MM-DD')),
(50, 10, 50, 7, 'ORD050', 'Salida', TO_DATE('2025-05-20', 'YYYY-MM-DD'));

-- ORDEN_DESPACHO
INSERT INTO Orden_despacho (id_orden, id_movimiento, cliente, estado, fecha_despacho) VALUES
(1, 2, 'Empresa A', 'Despachado', TO_DATE('2025-04-02', 'YYYY-MM-DD')),
(2, 4, 'Empresa B', 'Pendiente', TO_DATE('2025-04-04', 'YYYY-MM-DD')),
(3, 6, 'Empresa C', 'Despachado', TO_DATE('2025-04-06', 'YYYY-MM-DD')),
(4, 8, 'Empresa D', 'En proceso', TO_DATE('2025-04-08', 'YYYY-MM-DD')),
(5, 10, 'Empresa E', 'Pendiente', TO_DATE('2025-04-10', 'YYYY-MM-DD')),
(6, 12, 'Empresa F', 'Despachado', TO_DATE('2025-04-12', 'YYYY-MM-DD')),
(7, 14, 'Empresa G', 'En proceso', TO_DATE('2025-04-14', 'YYYY-MM-DD')),
(8, 16, 'Empresa H', 'Pendiente', TO_DATE('2025-04-16', 'YYYY-MM-DD')),
(9, 18, 'Empresa I', 'Despachado', TO_DATE('2025-04-18', 'YYYY-MM-DD')),
(10, 20, 'Empresa J', 'En proceso', TO_DATE('2025-04-20', 'YYYY-MM-DD')),
(11, 1, 'Empresa K', 'Pendiente', TO_DATE('2025-04-01', 'YYYY-MM-DD')),
(12, 3, 'Empresa L', 'Despachado', TO_DATE('2025-04-03', 'YYYY-MM-DD')),
(13, 5, 'Empresa M', 'Pendiente', TO_DATE('2025-04-05', 'YYYY-MM-DD')),
(14, 7, 'Empresa N', 'Despachado', TO_DATE('2025-04-07', 'YYYY-MM-DD')),
(15, 9, 'Empresa O', 'En proceso', TO_DATE('2025-04-09', 'YYYY-MM-DD')),
(16, 11, 'Empresa P', 'Despachado', TO_DATE('2025-04-11', 'YYYY-MM-DD')),
(17, 13, 'Empresa Q', 'En proceso', TO_DATE('2025-04-13', 'YYYY-MM-DD')),
(18, 15, 'Empresa R', 'Pendiente', TO_DATE('2025-04-15', 'YYYY-MM-DD')),
(19, 17, 'Empresa S', 'Despachado', TO_DATE('2025-04-17', 'YYYY-MM-DD')),
(20, 19, 'Empresa T', 'Pendiente', TO_DATE('2025-04-19', 'YYYY-MM-DD'));
(21, 21, 'Empresa U', 'Despachado', TO_DATE('2025-04-21', 'YYYY-MM-DD')),
(22, 22, 'Empresa V', 'Pendiente', TO_DATE('2025-04-22', 'YYYY-MM-DD')),
(23, 23, 'Empresa W', 'En proceso', TO_DATE('2025-04-23', 'YYYY-MM-DD')),
(24, 24, 'Empresa X', 'Despachado', TO_DATE('2025-04-24', 'YYYY-MM-DD')),
(25, 25, 'Empresa Y', 'Pendiente', TO_DATE('2025-04-25', 'YYYY-MM-DD')),
(26, 26, 'Empresa Z', 'En proceso', TO_DATE('2025-04-26', 'YYYY-MM-DD')),
(27, 27, 'Empresa AA', 'Despachado', TO_DATE('2025-04-27', 'YYYY-MM-DD')),
(28, 28, 'Empresa AB', 'Pendiente', TO_DATE('2025-04-28', 'YYYY-MM-DD')),
(29, 29, 'Empresa AC', 'En proceso', TO_DATE('2025-04-29', 'YYYY-MM-DD')),
(30, 30, 'Empresa AD', 'Despachado', TO_DATE('2025-04-30', 'YYYY-MM-DD')),
(31, 31, 'Empresa AE', 'Pendiente', TO_DATE('2025-05-01', 'YYYY-MM-DD')),
(32, 32, 'Empresa AF', 'En proceso', TO_DATE('2025-05-02', 'YYYY-MM-DD')),
(33, 33, 'Empresa AG', 'Despachado', TO_DATE('2025-05-03', 'YYYY-MM-DD')),
(34, 34, 'Empresa AH', 'Pendiente', TO_DATE('2025-05-04', 'YYYY-MM-DD')),
(35, 35, 'Empresa AI', 'En proceso', TO_DATE('2025-05-05', 'YYYY-MM-DD')),
(36, 36, 'Empresa AJ', 'Despachado', TO_DATE('2025-05-06', 'YYYY-MM-DD')),
(37, 37, 'Empresa AK', 'Pendiente', TO_DATE('2025-05-07', 'YYYY-MM-DD')),
(38, 38, 'Empresa AL', 'En proceso', TO_DATE('2025-05-08', 'YYYY-MM-DD')),
(39, 39, 'Empresa AM', 'Despachado', TO_DATE('2025-05-09', 'YYYY-MM-DD')),
(40, 40, 'Empresa AN', 'Pendiente', TO_DATE('2025-05-10', 'YYYY-MM-DD')),
(41, 41, 'Empresa AO', 'En proceso', TO_DATE('2025-05-11', 'YYYY-MM-DD')),
(42, 42, 'Empresa AP', 'Despachado', TO_DATE('2025-05-12', 'YYYY-MM-DD')),
(43, 43, 'Empresa AQ', 'Pendiente', TO_DATE('2025-05-13', 'YYYY-MM-DD')),
(44, 44, 'Empresa AR', 'En proceso', TO_DATE('2025-05-14', 'YYYY-MM-DD')),
(45, 45, 'Empresa AS', 'Despachado', TO_DATE('2025-05-15', 'YYYY-MM-DD')),
(46, 46, 'Empresa AT', 'Pendiente', TO_DATE('2025-05-16', 'YYYY-MM-DD')),
(47, 47, 'Empresa AU', 'En proceso', TO_DATE('2025-05-17', 'YYYY-MM-DD')),
(48, 48, 'Empresa AV', 'Despachado', TO_DATE('2025-05-18', 'YYYY-MM-DD')),
(49, 49, 'Empresa AW', 'Pendiente', TO_DATE('2025-05-19', 'YYYY-MM-DD')),
(50, 50, 'Empresa AX', 'En proceso', TO_DATE('2025-05-20', 'YYYY-MM-DD'));


-- EMPLEADO
INSERT INTO EMPLEADO (idEmpleado, nombre, apellido_paterno, apellido_materno, telefono, dni, area_trabajo, rol)
VALUES
(10000001, 'Juan', 'Pérez', 'Gómez', '123456789', '12345678', 'Despacho', 'Operativo de Despacho'),
(10000002, 'María', 'Rodríguez', 'López', '987654321', '23456789', 'Seguimiento del Paquete', 'Supervisor de Seguimiento'),
(10000003, 'Carlos', 'García', 'Martínez', '456123789', '34567890', 'Cargamento', 'Conductor de Transporte'),
(10000004, 'Ana', 'Sánchez', 'Ramírez', '321654987', '45678901', 'Control de Equipos y Mantenimiento', 'Técnico de Mantenimiento'),
(10000005, 'Pedro', 'Torres', 'Hernández', '987654123', '56789012', 'Gestión de Inventario', 'Jefe de Inventarios');

-- EVENTO LOGISTICO
INSERT INTO EVENTO_LOGISTICO (idEvento, idPaquete, idEmpleado, descripcion, fecha, lugar, tipo)
VALUES
(20000001, 101, 10000001, 'Paquete cargado en el almacén principal para entrega', TO_TIMESTAMP('2025-04-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Avenida Libertador 500, Local 12', 'Carga'),
(20000002, 102, 10000002, 'Paquete en tránsito hacia el destino final', TO_TIMESTAMP('2025-04-02 09:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Avenida Callao 1200, Edificio Alfa', 'En tránsito'),
(20000003, 103, 10000003, 'Paquete transportado hacia el centro de distribución del sur', TO_TIMESTAMP('2025-04-03 10:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'Avenida Santa Fe 2345, Piso 4', 'Transporte'),
(20000004, 104, 10000004, 'Paquete en inspección técnica en el almacén', TO_TIMESTAMP('2025-04-04 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Avenida San Juan 120, Almacén A', 'Inspección'),
(20000005, 105, 10000005, 'Paquete en transferencia hacia el cliente final', TO_TIMESTAMP('2025-04-05 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Avenida Corrientes 3500, Local 3', 'Entrega');

-- NOTIFICACION
INSERT INTO NOTIFICACION (idNotificacion, idPaquete, fecha, canal, tipo, contenido)
VALUES
(30000001, 101, TO_TIMESTAMP('2025-04-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'SMS', 'Actualización', 'Su paquete ha sido cargado en el almacén principal y está en camino.'),
(30000002, 102, TO_TIMESTAMP('2025-04-02 09:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo Electrónico', 'Actualización', 'El paquete está en tránsito hacia su destino final.'),
(30000003, 103, TO_TIMESTAMP('2025-04-03 10:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'Notificación Push', 'Transporte', 'Su paquete ha sido transportado hacia el centro de distribución del sur.'),
(30000004, 104, TO_TIMESTAMP('2025-04-04 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'SMS', 'Inspección', 'El paquete está siendo inspeccionado en el almacén.'),
(30000005, 105, TO_TIMESTAMP('2025-04-05 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo Electrónico', 'Entrega', 'Su paquete está en proceso de entrega al cliente final.');

--ALERTA RETRASO

INSERT INTO ALERTA_RETRASO (idAlerta, idPaquete, fecha, canal, estado, umbral_horas, fecha_real, fecha_estimada)
VALUES
(40000001, 101, TO_TIMESTAMP('2025-04-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo', 'En proceso', 2, TO_TIMESTAMP('2025-04-01 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-04-01 11:00:00', 'YYYY-MM-DD HH24:MI:SS') + INTERVAL '2' HOUR),
(40000002, 102, TO_TIMESTAMP('2025-04-02 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'SMS', 'Resuelto', 3, TO_TIMESTAMP('2025-04-02 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-04-02 09:00:00', 'YYYY-MM-DD HH24:MI:SS') + INTERVAL '3' HOUR),
(40000003, 103, TO_TIMESTAMP('2025-04-03 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo', 'Pendiente', 4, TO_TIMESTAMP('2025-04-03 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-04-03 10:30:00', 'YYYY-MM-DD HH24:MI:SS') + INTERVAL '4' HOUR),
(40000004, 104, TO_TIMESTAMP('2025-04-04 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Aplicación', 'Resuelto', 1, TO_TIMESTAMP('2025-04-04 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-04-04 08:00:00', 'YYYY-MM-DD HH24:MI:SS') + INTERVAL '1' HOUR),
(40000005, 105, TO_TIMESTAMP('2025-04-05 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo', 'En proceso', 6, TO_TIMESTAMP('2025-04-05 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-04-05 13:00:00', 'YYYY-MM-DD HH24:MI:SS') + INTERVAL '6' HOUR),




INSERT INTO EMPLEADO (idEmpleado, nombre, apellido_paterno, apellido_materno, telefono, dni, area_trabajo, rol)
VALUES
(10000001, 'Juan', 'Pérez', 'Gómez', '123456789', '12345678', 'Despacho', 'Operativo de Despacho'),
(10000002, 'María', 'Rodríguez', 'López', '987654321', '23456789', 'Seguimiento del Paquete', 'Supervisor de Seguimiento'),
(10000003, 'Carlos', 'García', 'Martínez', '456123789', '34567890', 'Cargamento', 'Cargamento de Transporte'),
(10000004, 'Ana', 'Sánchez', 'Ramírez', '321654987', '45678901', 'Control de Equipos y Mantenimiento', 'Técnico de Mantenimiento'),
(10000005, 'Pedro', 'Torres', 'Hernández', '987654123', '56789012', 'Gestión de Inventario', 'Jefe de Inventarios'),
(10000006, 'Luis', 'Martínez', 'Fernández', '987654321', '67890123', 'Despacho', 'Operativo de Despacho'),
(10000007, 'Sofía', 'Pérez', 'González', '123456789', '78901234', 'Seguimiento del Paquete', 'Asistente de Seguimiento'),
(10000008, 'David', 'López', 'Sánchez', '456789012', '89012345', 'Cargamento', 'Cargamento de Transporte'),
(10000009, 'Laura', 'Gómez', 'Vargas', '321654987', '90123456', 'Control de Equipos y Mantenimiento', 'Técnico de Mantenimiento'),
(10000010, 'Felipe', 'Torres', 'Hernández', '654987321', '01234567', 'Gestión de Inventario', 'Jefe de Inventarios'),
(10000011, 'Isabel', 'Jiménez', 'Ruiz', '765432109', '12345098', 'Despacho', 'Operativo de Despacho'),
(10000012, 'Raúl', 'Moreno', 'López', '876543210', '23456109', 'Seguimiento del Paquete', 'Supervisor de Seguimiento'),
(10000013, 'Beatriz', 'Martín', 'Sánchez', '456789123', '34567012', 'Cargamento', 'Cargamento de Transporte'),
(10000014, 'Álvaro', 'Fernández', 'Ramírez', '321654765', '45678123', 'Control de Equipos y Mantenimiento', 'Técnico de Mantenimiento'),
(10000015, 'Cristina', 'Rodríguez', 'Moreno', '987654321', '56789234', 'Gestión de Inventario', 'Jefe de Inventarios'),
(10000016, 'Santiago', 'López', 'Pérez', '543210987', '67890345', 'Despacho', 'Operativo de Despacho'),
(10000017, 'Marta', 'González', 'López', '654321098', '78901456', 'Seguimiento del Paquete', 'Asistente de Seguimiento'),
(10000018, 'José', 'Martínez', 'Sánchez', '765432123', '89012567', 'Cargamento', 'Cargamento de Transporte'),
(10000019, 'Patricia', 'Vargas', 'Gómez', '876543321', '90123678', 'Control de Equipos y Mantenimiento', 'Técnico de Mantenimiento'),
(10000020, 'Ángel', 'Torres', 'Hernández', '987654987', '01234578', 'Gestión de Inventario', 'Jefe de Inventarios'),
(10000021, 'Raquel', 'Sánchez', 'Ramírez', '765432345', '12345789', 'Despacho', 'Operativo de Despacho'),
(10000022, 'Javier', 'Gómez', 'Pérez', '654321234', '23456890', 'Seguimiento del Paquete', 'Supervisor de Seguimiento'),
(10000023, 'Verónica', 'Rodríguez', 'González', '543210876', '34567901', 'Cargamento', 'Cargamento de Transporte'),
(10000024, 'Manuel', 'Martínez', 'Ruiz', '432109765', '45678012', 'Control de Equipos y Mantenimiento', 'Técnico de Mantenimiento'),
(10000025, 'Luis', 'Torres', 'Sánchez', '321098654', '56789123', 'Gestión de Inventario', 'Jefe de Inventarios'),
(10000026, 'Fernando', 'González', 'Sánchez', '987654321', '67890234', 'Despacho', 'Operativo de Despacho'),
(10000027, 'Eva', 'Pérez', 'González', '765432345', '78901345', 'Seguimiento del Paquete', 'Asistente de Seguimiento'),
(10000028, 'Martín', 'López', 'Rodríguez', '654321234', '89012456', 'Cargamento', 'Cargamento de Transporte'),
(10000029, 'Olga', 'Fernández', 'Sánchez', '543210123', '90123567', 'Control de Equipos y Mantenimiento', 'Técnico de Mantenimiento'),
(10000030, 'Carlos', 'Martín', 'Rodríguez', '432109876', '01234789', 'Gestión de Inventario', 'Jefe de Inventarios'),
(10000031, 'Julián', 'Torres', 'Martínez', '321098543', '12345890', 'Despacho', 'Operativo de Despacho'),
(10000032, 'Beatriz', 'Rodríguez', 'González', '765432109', '23456901', 'Seguimiento del Paquete', 'Supervisor de Seguimiento'),
(10000033, 'Felipe', 'López', 'Sánchez', '654321567', '34568012', 'Cargamento', 'Cargamento de Transporte'),
(10000034, 'Rocío', 'Vargas', 'Pérez', '543210765', '45679123', 'Control de Equipos y Mantenimiento', 'Técnico de Mantenimiento'),
(10000035, 'Jesús', 'Torres', 'Gómez', '987654012', '56789234', 'Gestión de Inventario', 'Jefe de Inventarios'),
(10000036, 'Carlos', 'Gómez', 'Vargas', '765432321', '67890345', 'Despacho', 'Operativo de Despacho'),
(10000037, 'Teresa', 'Sánchez', 'Martínez', '654321234', '78901456', 'Seguimiento del Paquete', 'Asistente de Seguimiento'),
(10000038, 'Ricardo', 'González', 'Rodríguez', '543210876', '89012567', 'Cargamento', 'Cargamento de Transporte'),
(10000039, 'Elena', 'Pérez', 'Torres', '432109876', '90123678', 'Control de Equipos y Mantenimiento', 'Técnico de Mantenimiento'),
(10000040, 'Álvaro', 'Vargas', 'Sánchez', '321098654', '01234578', 'Gestión de Inventario', 'Jefe de Inventarios'),
(10000041, 'Cristina', 'López', 'Sánchez', '765432109', '12345789', 'Despacho', 'Operativo de Despacho'),
(10000042, 'Alberto', 'Rodríguez', 'Fernández', '654321234', '23456890', 'Seguimiento del Paquete', 'Supervisor de Seguimiento'),
(10000043, 'Ana', 'Gómez', 'Martínez', '543210765', '34567901', 'Cargamento', 'Cargamento de Transporte'),
(10000044, 'Luis', 'Pérez', 'Rodríguez', '432109765', '45678012', 'Control de Equipos y Mantenimiento', 'Técnico de Mantenimiento'),
(10000045, 'Mónica', 'Vargas', 'Pérez', '321098654', '56789123', 'Gestión de Inventario', 'Jefe de Inventarios'),
(10000046, 'Raúl', 'González', 'Torres', '987654987', '67890234', 'Despacho', 'Operativo de Despacho'),
(10000047, 'Silvia', 'Torres', 'González', '765432345', '78901345', 'Seguimiento del Paquete', 'Asistente de Seguimiento'),
(10000048, 'Eduardo', 'López', 'Fernández', '654321234', '89012456', 'Cargamento', 'Cargamento de Transporte'),
(10000049, 'Laura', 'Sánchez', 'Pérez', '543210123', '90123567', 'Control de Equipos y Mantenimiento', 'Técnico de Mantenimiento'),
(10000050, 'Pedro', 'Rodríguez', 'Gómez', '432109876', '01234789', 'Gestión de Inventario', 'Jefe de Inventarios');

INSERT INTO EVENTO_LOGISTICO (idEvento, idPaquete, idEmpleado, descripcion, fecha, lugar, tipo)
VALUES
(20000001, 101, 10000001, 'Paquete cargado para despacho inicial', TO_TIMESTAMP('2025-04-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Avenida El Sol 123, frente a Terminal Sur', 'Carga'),
(20000002, 102, 10000002, 'Inicio de traslado a punto intermedio', TO_TIMESTAMP('2025-04-01 09:10:00', 'YYYY-MM-DD HH24:MI:SS'), 'Avenida Tupac Amaru 456, cruce con Av. Perú', 'Transporte'),
(20000003, 103, 10000003, 'Recepción en centro logístico secundario', TO_TIMESTAMP('2025-04-01 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Avenida Colonial 2200, Callao', 'Recepción'),
(20000004, 104, 10000004, 'Verificación por supervisor logístico', TO_TIMESTAMP('2025-04-01 11:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Avenida La Marina 900, frente a Hiraoka', 'Inspección'),
(20000005, 105, 10000005, 'Paquete en ruta a cliente final', TO_TIMESTAMP('2025-04-01 12:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Avenida Arequipa 1300, a una cuadra de Parque Kennedy', 'Transporte'),
(20000006, 106, 10000006, 'Entrega exitosa registrada', TO_TIMESTAMP('2025-04-01 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Jr. Cusco 145, Cercado de Lima', 'Entrega'),
(20000007, 107, 10000007, 'Revisión por jefe de almacén', TO_TIMESTAMP('2025-04-01 15:10:00', 'YYYY-MM-DD HH24:MI:SS'), 'Avenida Argentina 1800, zona industrial', 'Inspección'),
(20000008, 108, 10000008, 'Carga reubicada por orden logística', TO_TIMESTAMP('2025-04-01 16:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Av. Tomás Valle 520, altura cruce con Panamericana Norte', 'Carga'),
(20000009, 109, 10000009, 'Control de escaneo y QR validado', TO_TIMESTAMP('2025-04-01 17:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Jr. Moquegua 345, frente a Plaza Italia', 'Verificación'),
(20000010, 110, 10000010, 'Entrega no realizada por dirección incorrecta', TO_TIMESTAMP('2025-04-01 18:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'Av. Próceres de la Independencia 7400, SJL', 'Incidente'),
(20000011, 111, 10000011, 'Programación de reintento de entrega', TO_TIMESTAMP('2025-04-02 08:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Av. Abancay 1123, frente al Congreso', 'Reintento'),
(20000012, 112, 10000012, 'Paquete almacenado temporalmente', TO_TIMESTAMP('2025-04-02 09:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Av. Nicolás Ayllón 3000, La Victoria', 'Almacenaje'),
(20000013, 113, 10000013, 'Verificación física completada', TO_TIMESTAMP('2025-04-02 10:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'Av. Canta Callao 2400, S.M.P.', 'Verificación'),
(20000014, 114, 10000014, 'Consolidación con otro envío', TO_TIMESTAMP('2025-04-02 11:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Av. Universitaria 2340, altura U. Nacional', 'Consolidación'),
(20000015, 115, 10000015, 'Etiqueta reimpresa por error de código', TO_TIMESTAMP('2025-04-02 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Av. San Luis 540, cruce con Av. Canadá', 'Verificación'),
(20000016, 116, 10000016, 'Carga asegurada en unidad de reparto', TO_TIMESTAMP('2025-04-02 14:10:00', 'YYYY-MM-DD HH24:MI:SS'), 'Av. Los Héroes 880, Villa El Salvador', 'Carga'),
(20000017, 117, 10000017, 'Paquete redireccionado por error logístico', TO_TIMESTAMP('2025-04-02 15:20:00', 'YYYY-MM-DD HH24:MI:SS'), 'Av. Venezuela 1290, altura Hospital Loayza', 'Reprogramación'),
(20000018, 118, 10000018, 'Entrega parcial por pedido dividido', TO_TIMESTAMP('2025-04-02 16:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Av. Brasil 2400, Magdalena', 'Entrega'),
(20000019, 119, 10000019, 'Inspección extraordinaria de paquete', TO_TIMESTAMP('2025-04-02 17:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Jr. Ayacucho 500, frente a Plaza Bolognesi', 'Inspección'),
(20000020, 120, 10000020, 'Registro actualizado en sistema central', TO_TIMESTAMP('2025-04-02 18:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Avenida Javier Prado Este 2700, San Borja', 'Registro'),
(20000021, 121, 10000021, 'Paquete escaneado para inventario', TO_TIMESTAMP('2025-04-03 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Av. El Polo 1200, Surco', 'Inventario'),
(20000022, 122, 10000022, 'Entrega final confirmada', TO_TIMESTAMP('2025-04-03 09:10:00', 'YYYY-MM-DD HH24:MI:SS'), 'Av. La Molina 2100, frente a U. Agraria', 'Entrega'),
(20000023, 123, 10000023, 'Unidad de transporte retrasada', TO_TIMESTAMP('2025-04-03 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Panamericana Sur km 10, puente Atocongo', 'Incidente'),
(20000024, 124, 10000024, 'Reempaque por daño en caja', TO_TIMESTAMP('2025-04-03 11:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'Jr. Talara 987, altura Mercado Unicachi', 'Reempaque'),
(20000025, 125, 10000025, 'Verificación por sistema RFID', TO_TIMESTAMP('2025-04-03 12:40:00', 'YYYY-MM-DD HH24:MI:SS'), 'Av. Guardia Civil 700, San Borja', 'Verificación'),
(20000026, 126, 10000026, 'Paquete asignado a conductor', TO_TIMESTAMP('2025-04-03 13:20:00', 'YYYY-MM-DD HH24:MI:SS'), 'Av. Benavides 1100, cruce con Av. Larco', 'Asignación'),
(20000027, 127, 10000027, 'Entrega en oficina de destino', TO_TIMESTAMP('2025-04-03 14:50:00', 'YYYY-MM-DD HH24:MI:SS'), 'Av. Angamos Oeste 150, Miraflores', 'Sucursal'),
(20000028, 128, 10000028, 'Carga verificada y firmada', TO_TIMESTAMP('2025-04-03 15:35:00', 'YYYY-MM-DD HH24:MI:SS'), 'Av. 28 de Julio 1450, La Victoria', 'Verificación'),
(20000029, 129, 10000029, 'Consolidación final para despacho', TO_TIMESTAMP('2025-04-03 16:20:00', 'YYYY-MM-DD HH24:MI:SS'), 'Av. Salaverry 1900, Jesús María', 'Consolidación'),
(20000030, 130, 10000030, 'Entrega diferida por mal clima', TO_TIMESTAMP('2025-04-03 17:10:00', 'YYYY-MM-DD HH24:MI:SS'), 'Carretera Central km 28, Ate', 'Reprogramación'),
(20000031, 131, 10000031, 'Paquete reprogramado por tráfico pesado', TO_TIMESTAMP('2025-04-04 08:10:00', 'YYYY-MM-DD HH24:MI:SS'), 'Av. Brasil 1020, Breña', 'Reprogramación'),
(20000032, 132, 10000032, 'Carga registrada en sistema logístico', TO_TIMESTAMP('2025-04-04 09:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'Av. San Borja Norte 700', 'Registro'),
(20000033, 133, 10000033, 'Carga entregada a cliente corporativo', TO_TIMESTAMP('2025-04-04 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Av. El Derby 450, San Borja', 'Entrega'),
(20000034, 134, 10000034, 'Verificación por supervisor zonal', TO_TIMESTAMP('2025-04-04 11:40:00', 'YYYY-MM-DD HH24:MI:SS'), 'Av. Universitaria 1900, San Miguel', 'Verificación'),
(20000035, 135, 10000035, 'Ruta optimizada para eficiencia', TO_TIMESTAMP('2025-04-04 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Av. Morales Duárez 1800, Bellavista', 'Control'),
(20000036, 136, 10000036, 'Documento de entrega firmado', TO_TIMESTAMP('2025-04-04 14:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'Av. Ejército 120, Miraflores', 'Documentación'),
(20000037, 137, 10000037, 'Inspección por control de calidad', TO_TIMESTAMP('2025-04-04 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Av. La Marina 2000, San Miguel', 'Inspección'),
(20000038, 138, 10000038, 'Paquete listo para reparto final', TO_TIMESTAMP('2025-04-04 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Av. Bolívar 3700, Pueblo Libre', 'Despacho'),
(20000039, 139, 10000039, 'Confirmación de entrega automática', TO_TIMESTAMP('2025-04-04 17:10:00', 'YYYY-MM-DD HH24:MI:SS'), 'Jr. Huancavelica 1250, Cercado', 'Confirmación'),
(20000040, 140, 10000040, 'Retraso reportado por tráfico', TO_TIMESTAMP('2025-04-04 18:25:00', 'YYYY-MM-DD HH24:MI:SS'), 'Av. Evitamiento km 9, Cercado', 'Incidente'),
(20000041, 141, 10000041, 'Entrega manual por error en sistema', TO_TIMESTAMP('2025-04-05 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Av. Venezuela 1500, Cercado', 'Entrega'),
(20000042, 142, 10000042, 'Cargamento consolidado para provincia', TO_TIMESTAMP('2025-04-05 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Av. Argentina 2000, Callao', 'Consolidación'),
(20000043, 143, 10000043, 'Supervisión logística completada', TO_TIMESTAMP('2025-04-05 11:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Av. El Sol 234, San Luis', 'Control'),
(20000044, 144, 10000044, 'Unidad retornó a almacén por falla', TO_TIMESTAMP('2025-04-05 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Av. Colonial 1560, Lima', 'Incidente'),
(20000045, 145, 10000045, 'Paquete reempacado por solicitud', TO_TIMESTAMP('2025-04-05 14:20:00', 'YYYY-MM-DD HH24:MI:SS'), 'Av. Faucett 890, Callao', 'Reempaque'),
(20000046, 146, 10000046, 'Reprogramación por cierre de vía', TO_TIMESTAMP('2025-04-05 15:35:00', 'YYYY-MM-DD HH24:MI:SS'), 'Av. Abancay 1200, Lima', 'Reprogramación'),
(20000047, 147, 10000047, 'Inventario actualizado', TO_TIMESTAMP('2025-04-05 16:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Av. Independencia 987, Comas', 'Inventario'),
(20000048, 148, 10000048, 'Ruta optimizada para siguiente reparto', TO_TIMESTAMP('2025-04-05 17:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'Av. Huaylas 1900, Chorrillos', 'Control'),
(20000049, 149, 10000049, 'Control de temperatura validado', TO_TIMESTAMP('2025-04-05 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Av. Guardia Chalaca 2340, Callao', 'Verificación'),
(20000050, 150, 10000050, 'Entrega definitiva confirmada', TO_TIMESTAMP('2025-04-05 18:40:00', 'YYYY-MM-DD HH24:MI:SS'), 'Av. Aviación 2400, San Borja', 'Confirmación');

INSERT INTO NOTIFICACION (idNotificacion, idPaquete, fecha, canal, tipo, contenido)
VALUES
(30000001, 101, TO_TIMESTAMP('2025-04-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'SMS', 'Actualización', 'Su paquete ha sido cargado en el almacén principal y está en camino.'),
(30000002, 102, TO_TIMESTAMP('2025-04-02 09:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo Electrónico', 'Actualización', 'El paquete está en tránsito hacia su destino final.'),
(30000003, 103, TO_TIMESTAMP('2025-04-03 10:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'APP Móvil', 'Transporte', 'Su paquete ha sido transportado hacia el centro de distribución del sur.'),
(30000004, 104, TO_TIMESTAMP('2025-04-04 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'SMS', 'Inspección', 'El paquete está siendo inspeccionado en el almacén.'),
(30000005, 105, TO_TIMESTAMP('2025-04-05 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo Electrónico', 'Entrega', 'Su paquete está en proceso de entrega al cliente final.'),
(30000006, 106, TO_TIMESTAMP('2025-04-06 13:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'APP Móvil', 'Entrega', 'El paquete ha llegado a su destino y está listo para ser entregado.'),
(30000007, 107, TO_TIMESTAMP('2025-04-07 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'SMS', 'Transferencia', 'El paquete ha sido transferido hacia otra provincia.'),
(30000008, 108, TO_TIMESTAMP('2025-04-08 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo Electrónico', 'Seguimiento', 'Estamos verificando el estado final del paquete antes de la entrega.'),
(30000009, 109, TO_TIMESTAMP('2025-04-09 16:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'APP Móvil', 'Inspección', 'El paquete ha sido descargado para inspección y ajuste.'),
(30000010, 110, TO_TIMESTAMP('2025-04-10 17:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'SMS', 'En tránsito', 'El paquete está en ruta hacia su destino final.'),
(30000011, 111, TO_TIMESTAMP('2025-04-11 18:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo Electrónico', 'Entrega', 'Su paquete ha sido entregado al cliente en el punto de destino.'),
(30000012, 112, TO_TIMESTAMP('2025-04-12 19:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'APP Móvil', 'Descarga', 'El paquete está siendo descargado para su revisión final en el almacén.'),
(30000013, 113, TO_TIMESTAMP('2025-04-13 20:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'SMS', 'Inspección Final', 'El paquete está siendo revisado antes de su entrega final.'),
(30000014, 114, TO_TIMESTAMP('2025-04-14 21:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo Electrónico', 'Entrega', 'Su paquete está en espera para ser entregado en breve.'),
(30000015, 115, TO_TIMESTAMP('2025-04-15 22:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'APP Móvil', 'Transferencia', 'El paquete ha sido transferido a otro centro de distribución para su entrega.'),
(30000016, 116, TO_TIMESTAMP('2025-04-16 23:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'SMS', 'Entrega', 'Su paquete está listo para ser entregado al cliente final.'),
(30000017, 117, TO_TIMESTAMP('2025-04-17 08:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo Electrónico', 'En tránsito', 'El paquete está en camino hacia el almacén central.'),
(30000018, 118, TO_TIMESTAMP('2025-04-18 09:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'APP Móvil', 'Inspección', 'El paquete ha llegado al almacén central y está en revisión.'),
(30000019, 119, TO_TIMESTAMP('2025-04-19 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'SMS', 'Entrega', 'Su paquete está siendo entregado en el punto final.'),
(30000020, 120, TO_TIMESTAMP('2025-04-20 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo Electrónico', 'Entrega', 'Su paquete ha sido entregado exitosamente al cliente final.'),
(30000021, 121, TO_TIMESTAMP('2025-04-21 08:10:00', 'YYYY-MM-DD HH24:MI:SS'), 'APP Móvil', 'Actualización', 'El paquete ha sido escaneado en el almacén intermedio.'),
(30000022, 122, TO_TIMESTAMP('2025-04-22 09:25:00', 'YYYY-MM-DD HH24:MI:SS'), 'SMS', 'Transferencia', 'El paquete ha salido del centro logístico con dirección al destino.'),
(30000023, 123, TO_TIMESTAMP('2025-04-23 10:40:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo Electrónico', 'Inspección', 'El paquete fue inspeccionado y aprobado para continuar.'),
(30000024, 124, TO_TIMESTAMP('2025-04-24 11:55:00', 'YYYY-MM-DD HH24:MI:SS'), 'APP Móvil', 'Descarga', 'El paquete ha sido descargado del transporte asignado.'),
(30000025, 125, TO_TIMESTAMP('2025-04-25 13:10:00', 'YYYY-MM-DD HH24:MI:SS'), 'SMS', 'Entrega', 'El mensajero está en camino con su paquete.'),
(30000026, 126, TO_TIMESTAMP('2025-04-26 14:20:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo Electrónico', 'Seguimiento', 'Estamos realizando seguimiento activo del paquete.'),
(30000027, 127, TO_TIMESTAMP('2025-04-27 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'APP Móvil', 'En tránsito', 'El paquete continúa su ruta hacia el cliente final.'),
(30000028, 128, TO_TIMESTAMP('2025-04-28 16:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'SMS', 'Entrega', 'Su paquete está a punto de llegar.'),
(30000029, 129, TO_TIMESTAMP('2025-04-29 17:55:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo Electrónico', 'Transferencia', 'El paquete ha sido transferido a la última milla.'),
(30000030, 130, TO_TIMESTAMP('2025-04-30 19:05:00', 'YYYY-MM-DD HH24:MI:SS'), 'APP Móvil', 'Inspección', 'Se está evaluando el estado final del paquete.'),
(30000031, 131, TO_TIMESTAMP('2025-05-01 08:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'SMS', 'Entrega', 'El paquete está en manos del repartidor.'),
(30000032, 132, TO_TIMESTAMP('2025-05-02 09:25:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo Electrónico', 'En tránsito', 'El paquete está saliendo del almacén regional.'),
(30000033, 133, TO_TIMESTAMP('2025-05-03 10:35:00', 'YYYY-MM-DD HH24:MI:SS'), 'APP Móvil', 'Transferencia', 'El paquete ha sido redirigido al centro logístico secundario.'),
(30000034, 134, TO_TIMESTAMP('2025-05-04 11:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'SMS', 'Inspección', 'El paquete fue seleccionado para revisión técnica.'),
(30000035, 135, TO_TIMESTAMP('2025-05-05 12:55:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo Electrónico', 'Entrega', 'El paquete está siendo distribuido a su dirección.'),
(30000036, 136, TO_TIMESTAMP('2025-05-06 14:05:00', 'YYYY-MM-DD HH24:MI:SS'), 'APP Móvil', 'Descarga', 'El paquete ha llegado a la base de operaciones.'),
(30000037, 137, TO_TIMESTAMP('2025-05-07 15:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'SMS', 'En tránsito', 'El paquete sigue su curso sin inconvenientes.'),
(30000038, 138, TO_TIMESTAMP('2025-05-08 16:25:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo Electrónico', 'Entrega', 'Confirmamos que el paquete está en la unidad de reparto.'),
(30000039, 139, TO_TIMESTAMP('2025-05-09 17:35:00', 'YYYY-MM-DD HH24:MI:SS'), 'APP Móvil', 'Transferencia', 'El paquete fue trasladado a la oficina de zona.'),
(30000040, 140, TO_TIMESTAMP('2025-05-10 18:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'SMS', 'Entrega', 'El paquete ha sido entregado correctamente.'),
(30000041, 141, TO_TIMESTAMP('2025-05-11 08:10:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo Electrónico', 'Actualización', 'Estado actualizado: listo para despacho.'),
(30000042, 142, TO_TIMESTAMP('2025-05-12 09:20:00', 'YYYY-MM-DD HH24:MI:SS'), 'APP Móvil', 'Descarga', 'Descarga exitosa en el punto logístico.'),
(30000043, 143, TO_TIMESTAMP('2025-05-13 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'SMS', 'En tránsito', 'Su paquete está viajando por carretera.'),
(30000044, 144, TO_TIMESTAMP('2025-05-14 11:40:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo Electrónico', 'Transferencia', 'Transferencia realizada al punto final.'),
(30000045, 145, TO_TIMESTAMP('2025-05-15 12:50:00', 'YYYY-MM-DD HH24:MI:SS'), 'APP Móvil', 'Inspección', 'El paquete está siendo verificado antes del despacho.'),
(30000046, 146, TO_TIMESTAMP('2025-05-16 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'SMS', 'Entrega', 'El mensajero está en camino a su domicilio.'),
(30000047, 147, TO_TIMESTAMP('2025-05-17 15:10:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo Electrónico', 'Seguimiento', 'Seguimiento en tiempo real activado para su paquete.'),
(30000048, 148, TO_TIMESTAMP('2025-05-18 16:20:00', 'YYYY-MM-DD HH24:MI:SS'), 'APP Móvil', 'En tránsito', 'El paquete ha superado el punto de control.'),
(30000049, 149, TO_TIMESTAMP('2025-05-19 17:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'SMS', 'Entrega', 'El paquete ha sido entregado al cliente.'),
(30000050, 150, TO_TIMESTAMP('2025-05-20 18:40:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo Electrónico', 'Actualización', 'Se ha registrado la entrega exitosa del paquete.');

INSERT INTO ALERTA_RETRASO (idAlerta, idPaquete, fecha, canal, estado, umbral_horas, fecha_real, fecha_estimada)
VALUES
(40000001, 101, TO_TIMESTAMP('2025-04-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo', 'En proceso', 2, TO_TIMESTAMP('2025-04-01 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-04-01 13:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000002, 102, TO_TIMESTAMP('2025-04-02 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'SMS', 'Resuelto', 3, TO_TIMESTAMP('2025-04-02 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-04-02 12:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000003, 103, TO_TIMESTAMP('2025-04-03 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo', 'Pendiente', 4, TO_TIMESTAMP('2025-04-03 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-04-03 14:30:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000004, 104, TO_TIMESTAMP('2025-04-04 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Aplicación', 'Resuelto', 1, TO_TIMESTAMP('2025-04-04 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-04-04 09:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000005, 105, TO_TIMESTAMP('2025-04-05 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo', 'En proceso', 6, TO_TIMESTAMP('2025-04-05 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-04-05 19:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000006, 106, TO_TIMESTAMP('2025-04-06 07:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'SMS', 'Pendiente', 2, TO_TIMESTAMP('2025-04-06 07:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-04-06 09:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000007, 107, TO_TIMESTAMP('2025-04-07 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo', 'Resuelto', 3, TO_TIMESTAMP('2025-04-07 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-04-07 17:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000008, 108, TO_TIMESTAMP('2025-04-08 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Aplicación', 'Pendiente', 5, TO_TIMESTAMP('2025-04-08 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-04-08 21:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000009, 109, TO_TIMESTAMP('2025-04-09 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'SMS', 'En proceso', 4, TO_TIMESTAMP('2025-04-09 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-04-09 22:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000010, 110, TO_TIMESTAMP('2025-04-10 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo', 'Resuelto', 1, TO_TIMESTAMP('2025-04-10 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-04-10 13:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000011, 111, TO_TIMESTAMP('2025-04-11 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Aplicación', 'Pendiente', 7, TO_TIMESTAMP('2025-04-11 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-04-11 18:30:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000012, 112, TO_TIMESTAMP('2025-04-12 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo', 'En proceso', 2, TO_TIMESTAMP('2025-04-12 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-04-12 17:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000013, 113, TO_TIMESTAMP('2025-04-13 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'SMS', 'Pendiente', 4, TO_TIMESTAMP('2025-04-13 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-04-13 14:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000014, 114, TO_TIMESTAMP('2025-04-14 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Aplicación', 'Resuelto', 1, TO_TIMESTAMP('2025-04-14 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-04-14 10:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000015, 115, TO_TIMESTAMP('2025-04-15 16:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo', 'Pendiente', 3, TO_TIMESTAMP('2025-04-15 16:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-04-15 19:30:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000016, 116, TO_TIMESTAMP('2025-04-16 08:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo', 'En proceso', 2, TO_TIMESTAMP('2025-04-16 08:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-04-16 10:15:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000017, 117, TO_TIMESTAMP('2025-04-17 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'SMS', 'Resuelto', 5, TO_TIMESTAMP('2025-04-17 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-04-17 19:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000018, 118, TO_TIMESTAMP('2025-04-18 17:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo', 'Pendiente', 3, TO_TIMESTAMP('2025-04-18 17:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-04-18 20:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000019, 119, TO_TIMESTAMP('2025-04-19 10:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Aplicación', 'Resuelto', 1, TO_TIMESTAMP('2025-04-19 10:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-04-19 11:45:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000020, 120, TO_TIMESTAMP('2025-04-20 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'SMS', 'En proceso', 6, TO_TIMESTAMP('2025-04-20 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-04-20 17:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000021, 121, TO_TIMESTAMP('2025-04-21 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo', 'Pendiente', 2, TO_TIMESTAMP('2025-04-21 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-04-21 11:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000022, 122, TO_TIMESTAMP('2025-04-22 13:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'Aplicación', 'Resuelto', 4, TO_TIMESTAMP('2025-04-22 13:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-04-22 17:15:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000023, 123, TO_TIMESTAMP('2025-04-23 08:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'SMS', 'En proceso', 3, TO_TIMESTAMP('2025-04-23 08:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-04-23 11:30:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000024, 124, TO_TIMESTAMP('2025-04-24 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo', 'Pendiente', 2, TO_TIMESTAMP('2025-04-24 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-04-24 12:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000025, 125, TO_TIMESTAMP('2025-04-25 14:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Aplicación', 'Resuelto', 1, TO_TIMESTAMP('2025-04-25 14:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-04-25 15:45:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000026, 126, TO_TIMESTAMP('2025-04-26 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'SMS', 'En proceso', 4, TO_TIMESTAMP('2025-04-26 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-04-26 19:30:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000027, 127, TO_TIMESTAMP('2025-04-27 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo', 'Pendiente', 5, TO_TIMESTAMP('2025-04-27 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-04-27 16:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000028, 128, TO_TIMESTAMP('2025-04-28 08:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Aplicación', 'Resuelto', 1, TO_TIMESTAMP('2025-04-28 08:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-04-28 09:45:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000029, 129, TO_TIMESTAMP('2025-04-29 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'SMS', 'En proceso', 2, TO_TIMESTAMP('2025-04-29 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-04-29 12:30:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000030, 130, TO_TIMESTAMP('2025-04-30 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo', 'Pendiente', 3, TO_TIMESTAMP('2025-04-30 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-04-30 16:00:00', 'YYYY-MM-DD HH24:MI:SS'));
(40000031, 131, TO_TIMESTAMP('2025-05-01 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo', 'Pendiente', 3, TO_TIMESTAMP('2025-05-01 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-05-01 12:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000032, 132, TO_TIMESTAMP('2025-05-02 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'SMS', 'Resuelto', 2, TO_TIMESTAMP('2025-05-02 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-05-02 13:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000033, 133, TO_TIMESTAMP('2025-05-03 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Aplicación', 'En proceso', 4, TO_TIMESTAMP('2025-05-03 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-05-03 18:30:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000034, 134, TO_TIMESTAMP('2025-05-04 08:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo', 'Pendiente', 5, TO_TIMESTAMP('2025-05-04 08:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-05-04 13:45:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000035, 135, TO_TIMESTAMP('2025-05-05 10:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'SMS', 'Resuelto', 1, TO_TIMESTAMP('2025-05-05 10:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-05-05 11:15:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000036, 136, TO_TIMESTAMP('2025-05-06 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Aplicación', 'En proceso', 2, TO_TIMESTAMP('2025-05-06 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-05-06 14:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000037, 137, TO_TIMESTAMP('2025-05-07 13:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo', 'Pendiente', 3, TO_TIMESTAMP('2025-05-07 13:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-05-07 16:30:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000038, 138, TO_TIMESTAMP('2025-05-08 09:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'SMS', 'Resuelto', 4, TO_TIMESTAMP('2025-05-08 09:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-05-08 13:45:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000039, 139, TO_TIMESTAMP('2025-05-09 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Aplicación', 'En proceso', 5, TO_TIMESTAMP('2025-05-09 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-05-09 20:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000040, 140, TO_TIMESTAMP('2025-05-10 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo', 'Pendiente', 2, TO_TIMESTAMP('2025-05-10 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-05-10 10:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000041, 141, TO_TIMESTAMP('2025-05-11 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'SMS', 'Resuelto', 3, TO_TIMESTAMP('2025-05-11 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-05-11 17:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000042, 142, TO_TIMESTAMP('2025-05-12 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Aplicación', 'Pendiente', 1, TO_TIMESTAMP('2025-05-12 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-05-12 11:30:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000043, 143, TO_TIMESTAMP('2025-05-13 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo', 'En proceso', 4, TO_TIMESTAMP('2025-05-13 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-05-13 20:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000044, 144, TO_TIMESTAMP('2025-05-14 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'SMS', 'Pendiente', 2, TO_TIMESTAMP('2025-05-14 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-05-14 13:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000045, 145, TO_TIMESTAMP('2025-05-15 08:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Aplicación', 'Resuelto', 1, TO_TIMESTAMP('2025-05-15 08:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-05-15 09:30:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000046, 146, TO_TIMESTAMP('2025-05-16 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo', 'En proceso', 3, TO_TIMESTAMP('2025-05-16 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-05-16 12:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000047, 147, TO_TIMESTAMP('2025-05-17 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'SMS', 'Pendiente', 5, TO_TIMESTAMP('2025-05-17 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-05-17 18:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000048, 148, TO_TIMESTAMP('2025-05-18 14:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Aplicación', 'Resuelto', 2, TO_TIMESTAMP('2025-05-18 14:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-05-18 16:45:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000049, 149, TO_TIMESTAMP('2025-05-19 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo', 'En proceso', 6, TO_TIMESTAMP('2025-05-19 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-05-19 16:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000050, 150, TO_TIMESTAMP('2025-05-20 12:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'SMS', 'Pendiente', 4, TO_TIMESTAMP('2025-05-20 12:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-05-20 16:30:00', 'YYYY-MM-DD HH24:MI:SS'));


-- Proveedor
INSERT INTO PROVEEDOR (idProveedor, razon_social, ruc, correo, numero_contacto_proveedor)
VALUES
(12345670, 'Inversiones Globales S.A.C.', '20481234567', 'contacto@inversionesglobales.com', '987654321'),
(12345671, 'Distribuciones Andinas EIRL', '20123456789', 'ventas@andinas.com.pe', '912345678'),
(12345672, 'TecnoSoluciones S.R.L.', '20567891234', 'soporte@tecnosoluciones.pe', '900112233'),
(12345673, 'Logística Express S.A.', '20654321987', 'logistica@expresssa.com', '998877665'),
(12345674, 'Importaciones del Sur SAC', '20345678901', 'info@importsur.com', '955667788');

-- Lote
INSERT INTO LOTE (idLote, estado_lote, estado_daños, cantidad_paquetes, idproveedor)
VALUES
(10000001, 'Recepcionado', 'Con daños', 5, 12345670),
(10000002, 'Pendiente', 'Sin daños', 4, 12345671),
(10000003, 'Pendiente', 'Sin daños', 3, 12345672),
(10000004, 'Pendiente', 'Sin daños', 4, 12345673);

-- Paquete
INSERT INTO PAQUETE (idPaquete, estado_paquete, ubicacion, fecha_ingreso, fecha_estimada_entrega, id_lote)
VALUES
(20000001, 'Por verificar', 'Almacén_3', TO_DATE('2025-04-20', 'YYYY-MM-DD'), TO_DATE('2025-04-22', 'YYYY-MM-DD'), 10000001),
(20000002, 'Por verificar', 'Almacén_2', TO_DATE('2025-04-22', 'YYYY-MM-DD'), TO_DATE('2025-04-25', 'YYYY-MM-DD'), 10000001),
(20000003, 'Verificado', 'Almacén_4', TO_DATE('2025-04-26', 'YYYY-MM-DD'), TO_DATE('2025-04-27', 'YYYY-MM-DD'), 10000001),
(20000004, 'Por verificar', 'Almacén_1', TO_DATE('2025-04-27', 'YYYY-MM-DD'), TO_DATE('2025-05-02', 'YYYY-MM-DD'), 10000001),
(20000005, 'Por verificar', 'Almacén_5', TO_DATE('2025-04-23', 'YYYY-MM-DD'), TO_DATE('2025-04-26', 'YYYY-MM-DD'), 10000001);

-- Producto
INSERT INTO PRUDCTO (idProducto, nombre_producto, estado_producto, descripcion, id_paquete)
VALUES
(30000001, 'Laptop', 'Producto sin daños', 'Portátil de alto rendimiento con pantalla de 15 pulgadas.', 20000001),
(30000002, 'Smartphone', 'Producto dañado', 'Teléfono inteligente con la pantalla rota.', 20000001),
(30000003, 'Televisor 4K', 'Producto sin daños', 'Smart TV de 55 pulgadas con resolución Ultra HD.', 20000001),
(30000004, 'Refrigerador', 'Producto dañado', 'Nevera con un golpe en la puerta.', 20000001),
(30000005, 'Auriculares Bluetooth', 'Producto dañado', 'Cascos inalámbricos con un auricular que no funciona.', 20000002);



INSERT INTO PROVEEDOR (idProveedor, razon_social, ruc, correo, numero_contacto_proveedor)
VALUES
(12345670, 'Inversiones Globales S.A.C.', '20481234567', 'contacto@inversionesglobales.com', '987654321'),
(12345671, 'Distribuciones Andinas EIRL', '20123456789', 'ventas@andinas.com.pe', '912345678'),
(12345672, 'TecnoSoluciones S.R.L.', '20567891234', 'soporte@tecnosoluciones.pe', '900112233'),
(12345673, 'Logística Express S.A.', '20654321987', 'logistica@expresssa.com', '998877665'),
(12345674, 'Importaciones del Sur SAC', '20345678901', 'info@importsur.com', '955667788'),
(12345675, 'Grupo Empresarial Nova', '20369403523', 'contacto6@empresa6.com', '933120792'),
(12345676, 'Comercial J&L', '20054851095', 'contacto7@empresa7.com', '995542852'),
(12345677, 'Servicios Integrales S.A.C.', '20613713868', 'contacto8@empresa8.com', '917415595'),
(12345678, 'Ferretería Moderna', '20738584016', 'contacto9@empresa9.com', '961040091'),
(12345679, 'Suministros del Norte', '20620288080', 'contacto10@empresa10.com', '919677848'),
(12345680, 'Industrias del Pacífico', '20686690697', 'contacto11@empresa11.com', '959246508'),
(12345681, 'Distribuciones Lima', '20591899896', 'contacto12@empresa12.com', '923677431'),
(12345682, 'Transporte y Carga Perú', '20621775223', 'contacto13@empresa13.com', '958343825'),
(12345683, 'Soluciones Técnicas Integrales', '20823916943', 'contacto14@empresa14.com', '986662459'),
(12345684, 'Global Trading EIRL', '20844606945', 'contacto15@empresa15.com', '972729238'),
(12345685, 'Almacenes Centralizados', '20706678689', 'contacto16@empresa16.com', '943448337'),
(12345686, 'Corporación Andina de Comercio', '20847372148', 'contacto17@empresa17.com', '923152794'),
(12345687, 'Inversiones Caral S.A.C.', '20803705806', 'contacto18@empresa18.com', '977858498'),
(12345688, 'Comercializadora Omega', '20227396767', 'contacto19@empresa19.com', '989059305'),
(12345689, 'EcoLogística Peruana', '20039848731', 'contacto20@empresa20.com', '999726240'),
(12345690, 'Importaciones Titan', '20488283234', 'contacto21@empresa21.com', '958904842'),
(12345691, 'Servicios Generales Orión', '20554849601', 'contacto22@empresa22.com', '929037442'),
(12345692, 'TechPerú S.A.C.', '20017248661', 'contacto23@empresa23.com', '974160354'),
(12345693, 'Comercializadora del Sur', '20036625289', 'contacto24@empresa24.com', '929206524'),
(12345694, 'Distribuciones Misti', '20463242294', 'contacto25@empresa25.com', '915819025'),
(12345695, 'MegaImport S.A.C.', '20904378212', 'contacto26@empresa26.com', '942160536'),
(12345696, 'Proveedores Unidos', '20926492139', 'contacto27@empresa27.com', '980499380'),
(12345697, 'Grupo Empresarial Horizonte', '20943742946', 'contacto28@empresa28.com', '951323066'),
(12345698, 'Soluciones Industriales S.R.L.', '20027949671', 'contacto29@empresa29.com', '948651671'),
(12345699, 'Inversiones & Negocios SAC', '20764742799', 'contacto30@empresa30.com', '926781796'),
(12345700, 'Distribuciones Express', '20651833168', 'contacto31@empresa31.com', '969250768'),
(12345701, 'Corporación del Norte', '20479333996', 'contacto32@empresa32.com', '946920777'),
(12345702, 'Logística y Carga Andes', '20628082137', 'contacto33@empresa33.com', '956561984'),
(12345703, 'Suministros Perú', '20721721153', 'contacto34@empresa34.com', '902869142'),
(12345704, 'Equipos Industriales A&C', '20241286587', 'contacto35@empresa35.com', '976415333'),
(12345705, 'Distribuciones Elite', '20068403427', 'contacto36@empresa36.com', '985472486'),
(12345706, 'Grupo Sur Logístico', '20667168967', 'contacto37@empresa37.com', '969471938'),
(12345707, 'Importadora Pacífico', '20690215379', 'contacto38@empresa38.com', '964185960'),
(12345708, 'Servicios Empresariales Delta', '20800858930', 'contacto39@empresa39.com', '938379830'),
(12345709, 'Proveedores Integrales del Perú', '20478885991', 'contacto40@empresa40.com', '927296408'),
(12345710, 'GlobalLogistic Partners', '20894279130', 'contacto41@empresa41.com', '963876104'),
(12345711, 'Mercantil Los Andes', '20901211540', 'contacto42@empresa42.com', '986717453'),
(12345712, 'Distribuidora Tecnológica SAC', '20288987888', 'contacto43@empresa43.com', '987427016'),
(12345713, 'Soluciones Comerciales PYMES', '20241169964', 'contacto44@empresa44.com', '914206310'),
(12345714, 'Consorcio Andino', '20462498980', 'contacto45@empresa45.com', '983965156'),
(12345715, 'Logística y Suministros SAC', '20573361599', 'contacto46@empresa46.com', '976079781'),
(12345716, 'Innovación y Logística', '20754047183', 'contacto47@empresa47.com', '937050678'),
(12345717, 'Perú Equipamientos', '20741652670', 'contacto48@empresa48.com', '938140213'),
(12345718, 'Red de Suministros SAC', '20633649579', 'contacto49@empresa49.com', '942005961'),
(12345719, 'Servicios Empresariales Qori', '20424491060', 'contacto50@empresa50.com', '976542834');

INSERT INTO LOTE (idLote, estado_lote, estado_daños, cantidad_paquetes, idproveedor)
VALUES
(10000001, 'Pendiente', 'Sin daños', 1, 12345670),
(10000002, 'Recepcionado', 'Con daños', 2, 12345671),
(10000003, 'Pendiente', 'Sin daños', 3, 12345672),
(10000004, 'Recepcionado', 'Con daños', 4, 12345673),
(10000005, 'Pendiente', 'Sin daños', 5, 12345674),
(10000006, 'Recepcionado', 'Con daños', 1, 12345675),
(10000007, 'Pendiente', 'Sin daños', 2, 12345676),
(10000008, 'Recepcionado', 'Con daños', 3, 12345677),
(10000009, 'Pendiente', 'Sin daños', 4, 12345678),
(10000010, 'Recepcionado', 'Con daños', 5, 12345679),
(10000011, 'Pendiente', 'Sin daños', 1, 12345680),
(10000012, 'Recepcionado', 'Con daños', 2, 12345681),
(10000013, 'Pendiente', 'Sin daños', 3, 12345682),
(10000014, 'Recepcionado', 'Con daños', 4, 12345683),
(10000015, 'Pendiente', 'Sin daños', 5, 12345684),
(10000016, 'Recepcionado', 'Con daños', 1, 12345685),
(10000017, 'Pendiente', 'Sin daños', 2, 12345686),
(10000018, 'Recepcionado', 'Con daños', 3, 12345687),
(10000019, 'Pendiente', 'Sin daños', 4, 12345688),
(10000020, 'Recepcionado', 'Con daños', 5, 12345689),
(10000021, 'Pendiente', 'Sin daños', 1, 12345690),
(10000022, 'Recepcionado', 'Con daños', 2, 12345691),
(10000023, 'Pendiente', 'Sin daños', 3, 12345692),
(10000024, 'Recepcionado', 'Con daños', 4, 12345693),
(10000025, 'Pendiente', 'Sin daños', 5, 12345694),
(10000026, 'Recepcionado', 'Con daños', 1, 12345695),
(10000027, 'Pendiente', 'Sin daños', 2, 12345696),
(10000028, 'Recepcionado', 'Con daños', 3, 12345697),
(10000029, 'Pendiente', 'Sin daños', 4, 12345698),
(10000030, 'Recepcionado', 'Con daños', 5, 12345699),
(10000031, 'Pendiente', 'Sin daños', 1, 12345700),
(10000032, 'Recepcionado', 'Con daños', 2, 12345701),
(10000033, 'Pendiente', 'Sin daños', 3, 12345702),
(10000034, 'Recepcionado', 'Con daños', 4, 12345703),
(10000035, 'Pendiente', 'Sin daños', 5, 12345704),
(10000036, 'Recepcionado', 'Con daños', 1, 12345705),
(10000037, 'Pendiente', 'Sin daños', 2, 12345706),
(10000038, 'Recepcionado', 'Con daños', 3, 12345707),
(10000039, 'Pendiente', 'Sin daños', 4, 12345708),
(10000040, 'Recepcionado', 'Con daños', 5, 12345709),
(10000041, 'Pendiente', 'Sin daños', 1, 12345710),
(10000042, 'Recepcionado', 'Con daños', 2, 12345711),
(10000043, 'Pendiente', 'Sin daños', 3, 12345712),
(10000044, 'Recepcionado', 'Con daños', 4, 12345713),
(10000045, 'Pendiente', 'Sin daños', 5, 12345714),
(10000046, 'Recepcionado', 'Con daños', 1, 12345715),
(10000047, 'Pendiente', 'Sin daños', 2, 12345716),
(10000048, 'Recepcionado', 'Con daños', 3, 12345717),
(10000049, 'Pendiente', 'Sin daños', 4, 12345718),
(10000050, 'Recepcionado', 'Con daños', 5, 12345719);

INSERT INTO PAQUETE (idPaquete, estado_paquete, ubicacion, fecha_ingreso, fecha_estimada_entrega, id_lote)
VALUES
(20000001, 'Por verificar', 'Almacén_1', TO_DATE('2025-04-20', 'YYYY-MM-DD'), TO_DATE('2025-04-22', 'YYYY-MM-DD'), 10000001),
(20000002, 'Verificado', 'Almacén_2', TO_DATE('2025-04-21', 'YYYY-MM-DD'), TO_DATE('2025-04-23', 'YYYY-MM-DD'), 10000002),
(20000003, 'Por verificar', 'Almacén_3', TO_DATE('2025-04-22', 'YYYY-MM-DD'), TO_DATE('2025-04-24', 'YYYY-MM-DD'), 10000002),
(20000004, 'Por verificar', 'Almacén_3', TO_DATE('2025-04-22', 'YYYY-MM-DD'), TO_DATE('2025-04-24', 'YYYY-MM-DD'), 10000003),
(20000005, 'Verificado', 'Almacén_4', TO_DATE('2025-04-23', 'YYYY-MM-DD'), TO_DATE('2025-04-25', 'YYYY-MM-DD'), 10000003),
(20000006, 'Por verificar', 'Almacén_5', TO_DATE('2025-04-24', 'YYYY-MM-DD'), TO_DATE('2025-04-26', 'YYYY-MM-DD'), 10000003),
(20000007, 'Verificado', 'Almacén_4', TO_DATE('2025-04-23', 'YYYY-MM-DD'), TO_DATE('2025-04-25', 'YYYY-MM-DD'), 10000004),
(20000008, 'Por verificar', 'Almacén_5', TO_DATE('2025-04-24', 'YYYY-MM-DD'), TO_DATE('2025-04-26', 'YYYY-MM-DD'), 10000004),
(20000009, 'Verificado', 'Almacén_1', TO_DATE('2025-04-25', 'YYYY-MM-DD'), TO_DATE('2025-04-27', 'YYYY-MM-DD'), 10000004),
(20000010, 'Por verificar', 'Almacén_2', TO_DATE('2025-04-26', 'YYYY-MM-DD'), TO_DATE('2025-04-28', 'YYYY-MM-DD'), 10000004),
(20000011, 'Por verificar', 'Almacén_5', TO_DATE('2025-04-24', 'YYYY-MM-DD'), TO_DATE('2025-04-26', 'YYYY-MM-DD'), 10000005),
(20000012, 'Verificado', 'Almacén_1', TO_DATE('2025-04-25', 'YYYY-MM-DD'), TO_DATE('2025-04-27', 'YYYY-MM-DD'), 10000005),
(20000013, 'Por verificar', 'Almacén_2', TO_DATE('2025-04-26', 'YYYY-MM-DD'), TO_DATE('2025-04-28', 'YYYY-MM-DD'), 10000005),
(20000014, 'Verificado', 'Almacén_3', TO_DATE('2025-04-27', 'YYYY-MM-DD'), TO_DATE('2025-04-29', 'YYYY-MM-DD'), 10000005),
(20000015, 'Por verificar', 'Almacén_4', TO_DATE('2025-04-28', 'YYYY-MM-DD'), TO_DATE('2025-04-30', 'YYYY-MM-DD'), 10000005),
(20000016, 'Verificado', 'Almacén_1', TO_DATE('2025-04-25', 'YYYY-MM-DD'), TO_DATE('2025-04-27', 'YYYY-MM-DD'), 10000006),
(20000017, 'Por verificar', 'Almacén_2', TO_DATE('2025-04-26', 'YYYY-MM-DD'), TO_DATE('2025-04-28', 'YYYY-MM-DD'), 10000007),
(20000018, 'Verificado', 'Almacén_3', TO_DATE('2025-04-27', 'YYYY-MM-DD'), TO_DATE('2025-04-29', 'YYYY-MM-DD'), 10000007),
(20000019, 'Verificado', 'Almacén_3', TO_DATE('2025-04-27', 'YYYY-MM-DD'), TO_DATE('2025-04-29', 'YYYY-MM-DD'), 10000008),
(20000020, 'Por verificar', 'Almacén_4', TO_DATE('2025-04-28', 'YYYY-MM-DD'), TO_DATE('2025-04-30', 'YYYY-MM-DD'), 10000008),
(20000021, 'Verificado', 'Almacén_5', TO_DATE('2025-04-29', 'YYYY-MM-DD'), TO_DATE('2025-05-01', 'YYYY-MM-DD'), 10000008),
(20000022, 'Por verificar', 'Almacén_4', TO_DATE('2025-04-28', 'YYYY-MM-DD'), TO_DATE('2025-04-30', 'YYYY-MM-DD'), 10000009),
(20000023, 'Verificado', 'Almacén_5', TO_DATE('2025-04-29', 'YYYY-MM-DD'), TO_DATE('2025-05-01', 'YYYY-MM-DD'), 10000009),
(20000024, 'Por verificar', 'Almacén_1', TO_DATE('2025-04-30', 'YYYY-MM-DD'), TO_DATE('2025-05-02', 'YYYY-MM-DD'), 10000009),
(20000025, 'Verificado', 'Almacén_2', TO_DATE('2025-05-01', 'YYYY-MM-DD'), TO_DATE('2025-05-03', 'YYYY-MM-DD'), 10000009),
(20000026, 'Verificado', 'Almacén_5', TO_DATE('2025-04-29', 'YYYY-MM-DD'), TO_DATE('2025-05-01', 'YYYY-MM-DD'), 10000010),
(20000027, 'Por verificar', 'Almacén_1', TO_DATE('2025-04-30', 'YYYY-MM-DD'), TO_DATE('2025-05-02', 'YYYY-MM-DD'), 10000010),
(20000028, 'Verificado', 'Almacén_2', TO_DATE('2025-05-01', 'YYYY-MM-DD'), TO_DATE('2025-05-03', 'YYYY-MM-DD'), 10000010),
(20000029, 'Por verificar', 'Almacén_3', TO_DATE('2025-05-02', 'YYYY-MM-DD'), TO_DATE('2025-05-04', 'YYYY-MM-DD'), 10000010),
(20000030, 'Verificado', 'Almacén_4', TO_DATE('2025-05-03', 'YYYY-MM-DD'), TO_DATE('2025-05-05', 'YYYY-MM-DD'), 10000010),
(20000031, 'Por verificar', 'Almacén_1', TO_DATE('2025-04-30', 'YYYY-MM-DD'), TO_DATE('2025-05-02', 'YYYY-MM-DD'), 10000011),
(20000032, 'Verificado', 'Almacén_2', TO_DATE('2025-05-01', 'YYYY-MM-DD'), TO_DATE('2025-05-03', 'YYYY-MM-DD'), 10000012),
(20000033, 'Por verificar', 'Almacén_3', TO_DATE('2025-05-02', 'YYYY-MM-DD'), TO_DATE('2025-05-04', 'YYYY-MM-DD'), 10000012),
(20000034, 'Por verificar', 'Almacén_3', TO_DATE('2025-05-02', 'YYYY-MM-DD'), TO_DATE('2025-05-04', 'YYYY-MM-DD'), 10000013),
(20000035, 'Verificado', 'Almacén_4', TO_DATE('2025-05-03', 'YYYY-MM-DD'), TO_DATE('2025-05-05', 'YYYY-MM-DD'), 10000013),
(20000036, 'Por verificar', 'Almacén_5', TO_DATE('2025-05-04', 'YYYY-MM-DD'), TO_DATE('2025-05-06', 'YYYY-MM-DD'), 10000013),
(20000037, 'Verificado', 'Almacén_4', TO_DATE('2025-05-03', 'YYYY-MM-DD'), TO_DATE('2025-05-05', 'YYYY-MM-DD'), 10000014),
(20000038, 'Por verificar', 'Almacén_5', TO_DATE('2025-05-04', 'YYYY-MM-DD'), TO_DATE('2025-05-06', 'YYYY-MM-DD'), 10000014),
(20000039, 'Verificado', 'Almacén_1', TO_DATE('2025-05-05', 'YYYY-MM-DD'), TO_DATE('2025-05-07', 'YYYY-MM-DD'), 10000014),
(20000040, 'Por verificar', 'Almacén_2', TO_DATE('2025-05-06', 'YYYY-MM-DD'), TO_DATE('2025-05-08', 'YYYY-MM-DD'), 10000014),
(20000041, 'Por verificar', 'Almacén_5', TO_DATE('2025-05-04', 'YYYY-MM-DD'), TO_DATE('2025-05-06', 'YYYY-MM-DD'), 10000015),
(20000042, 'Verificado', 'Almacén_1', TO_DATE('2025-05-05', 'YYYY-MM-DD'), TO_DATE('2025-05-07', 'YYYY-MM-DD'), 10000015),
(20000043, 'Por verificar', 'Almacén_2', TO_DATE('2025-05-06', 'YYYY-MM-DD'), TO_DATE('2025-05-08', 'YYYY-MM-DD'), 10000015),
(20000044, 'Verificado', 'Almacén_3', TO_DATE('2025-05-07', 'YYYY-MM-DD'), TO_DATE('2025-05-09', 'YYYY-MM-DD'), 10000015),
(20000045, 'Por verificar', 'Almacén_4', TO_DATE('2025-05-08', 'YYYY-MM-DD'), TO_DATE('2025-05-10', 'YYYY-MM-DD'), 10000015),
(20000046, 'Verificado', 'Almacén_1', TO_DATE('2025-05-05', 'YYYY-MM-DD'), TO_DATE('2025-05-07', 'YYYY-MM-DD'), 10000016),
(20000047, 'Por verificar', 'Almacén_2', TO_DATE('2025-05-06', 'YYYY-MM-DD'), TO_DATE('2025-05-08', 'YYYY-MM-DD'), 10000017),
(20000048, 'Verificado', 'Almacén_3', TO_DATE('2025-05-07', 'YYYY-MM-DD'), TO_DATE('2025-05-09', 'YYYY-MM-DD'), 10000017),
(20000049, 'Verificado', 'Almacén_3', TO_DATE('2025-05-07', 'YYYY-MM-DD'), TO_DATE('2025-05-09', 'YYYY-MM-DD'), 10000018),
(20000050, 'Por verificar', 'Almacén_4', TO_DATE('2025-05-08', 'YYYY-MM-DD'), TO_DATE('2025-05-10', 'YYYY-MM-DD'), 10000018),
(20000051, 'Verificado', 'Almacén_5', TO_DATE('2025-05-09', 'YYYY-MM-DD'), TO_DATE('2025-05-11', 'YYYY-MM-DD'), 10000018),
(20000052, 'Por verificar', 'Almacén_4', TO_DATE('2025-05-08', 'YYYY-MM-DD'), TO_DATE('2025-05-10', 'YYYY-MM-DD'), 10000019),
(20000053, 'Verificado', 'Almacén_5', TO_DATE('2025-05-09', 'YYYY-MM-DD'), TO_DATE('2025-05-11', 'YYYY-MM-DD'), 10000019),
(20000054, 'Por verificar', 'Almacén_1', TO_DATE('2025-05-10', 'YYYY-MM-DD'), TO_DATE('2025-05-12', 'YYYY-MM-DD'), 10000019),
(20000055, 'Verificado', 'Almacén_2', TO_DATE('2025-05-11', 'YYYY-MM-DD'), TO_DATE('2025-05-13', 'YYYY-MM-DD'), 10000019),
(20000056, 'Verificado', 'Almacén_5', TO_DATE('2025-05-09', 'YYYY-MM-DD'), TO_DATE('2025-05-11', 'YYYY-MM-DD'), 10000020),
(20000057, 'Por verificar', 'Almacén_1', TO_DATE('2025-05-10', 'YYYY-MM-DD'), TO_DATE('2025-05-12', 'YYYY-MM-DD'), 10000020),
(20000058, 'Verificado', 'Almacén_2', TO_DATE('2025-05-11', 'YYYY-MM-DD'), TO_DATE('2025-05-13', 'YYYY-MM-DD'), 10000020),
(20000059, 'Por verificar', 'Almacén_3', TO_DATE('2025-05-12', 'YYYY-MM-DD'), TO_DATE('2025-05-14', 'YYYY-MM-DD'), 10000020),
(20000060, 'Verificado', 'Almacén_4', TO_DATE('2025-05-13', 'YYYY-MM-DD'), TO_DATE('2025-05-15', 'YYYY-MM-DD'), 10000020),
(20000061, 'Por verificar', 'Almacén_1', TO_DATE('2025-05-10', 'YYYY-MM-DD'), TO_DATE('2025-05-12', 'YYYY-MM-DD'), 10000021),
(20000062, 'Verificado', 'Almacén_2', TO_DATE('2025-05-11', 'YYYY-MM-DD'), TO_DATE('2025-05-13', 'YYYY-MM-DD'), 10000022),
(20000063, 'Por verificar', 'Almacén_3', TO_DATE('2025-05-12', 'YYYY-MM-DD'), TO_DATE('2025-05-14', 'YYYY-MM-DD'), 10000022),
(20000064, 'Por verificar', 'Almacén_3', TO_DATE('2025-05-12', 'YYYY-MM-DD'), TO_DATE('2025-05-14', 'YYYY-MM-DD'), 10000023),
(20000065, 'Verificado', 'Almacén_4', TO_DATE('2025-05-13', 'YYYY-MM-DD'), TO_DATE('2025-05-15', 'YYYY-MM-DD'), 10000023),
(20000066, 'Por verificar', 'Almacén_5', TO_DATE('2025-05-14', 'YYYY-MM-DD'), TO_DATE('2025-05-16', 'YYYY-MM-DD'), 10000023),
(20000067, 'Verificado', 'Almacén_4', TO_DATE('2025-05-13', 'YYYY-MM-DD'), TO_DATE('2025-05-15', 'YYYY-MM-DD'), 10000024),
(20000068, 'Por verificar', 'Almacén_5', TO_DATE('2025-05-14', 'YYYY-MM-DD'), TO_DATE('2025-05-16', 'YYYY-MM-DD'), 10000024),
(20000069, 'Verificado', 'Almacén_1', TO_DATE('2025-05-15', 'YYYY-MM-DD'), TO_DATE('2025-05-17', 'YYYY-MM-DD'), 10000024),
(20000070, 'Por verificar', 'Almacén_2', TO_DATE('2025-05-16', 'YYYY-MM-DD'), TO_DATE('2025-05-18', 'YYYY-MM-DD'), 10000024),
(20000071, 'Por verificar', 'Almacén_5', TO_DATE('2025-05-14', 'YYYY-MM-DD'), TO_DATE('2025-05-16', 'YYYY-MM-DD'), 10000025),
(20000072, 'Verificado', 'Almacén_1', TO_DATE('2025-05-15', 'YYYY-MM-DD'), TO_DATE('2025-05-17', 'YYYY-MM-DD'), 10000025),
(20000073, 'Por verificar', 'Almacén_2', TO_DATE('2025-05-16', 'YYYY-MM-DD'), TO_DATE('2025-05-18', 'YYYY-MM-DD'), 10000025),
(20000074, 'Verificado', 'Almacén_3', TO_DATE('2025-05-17', 'YYYY-MM-DD'), TO_DATE('2025-05-19', 'YYYY-MM-DD'), 10000025),
(20000075, 'Por verificar', 'Almacén_4', TO_DATE('2025-05-18', 'YYYY-MM-DD'), TO_DATE('2025-05-20', 'YYYY-MM-DD'), 10000025),
(20000076, 'Verificado', 'Almacén_1', TO_DATE('2025-05-15', 'YYYY-MM-DD'), TO_DATE('2025-05-17', 'YYYY-MM-DD'), 10000026),
(20000077, 'Por verificar', 'Almacén_2', TO_DATE('2025-05-16', 'YYYY-MM-DD'), TO_DATE('2025-05-18', 'YYYY-MM-DD'), 10000027),
(20000078, 'Verificado', 'Almacén_3', TO_DATE('2025-05-17', 'YYYY-MM-DD'), TO_DATE('2025-05-19', 'YYYY-MM-DD'), 10000027),
(20000079, 'Verificado', 'Almacén_3', TO_DATE('2025-05-17', 'YYYY-MM-DD'), TO_DATE('2025-05-19', 'YYYY-MM-DD'), 10000028),
(20000080, 'Por verificar', 'Almacén_4', TO_DATE('2025-05-18', 'YYYY-MM-DD'), TO_DATE('2025-05-20', 'YYYY-MM-DD'), 10000028),
(20000081, 'Verificado', 'Almacén_5', TO_DATE('2025-05-19', 'YYYY-MM-DD'), TO_DATE('2025-05-21', 'YYYY-MM-DD'), 10000028),
(20000082, 'Por verificar', 'Almacén_4', TO_DATE('2025-05-18', 'YYYY-MM-DD'), TO_DATE('2025-05-20', 'YYYY-MM-DD'), 10000029),
(20000083, 'Verificado', 'Almacén_5', TO_DATE('2025-05-19', 'YYYY-MM-DD'), TO_DATE('2025-05-21', 'YYYY-MM-DD'), 10000029),
(20000084, 'Por verificar', 'Almacén_1', TO_DATE('2025-05-20', 'YYYY-MM-DD'), TO_DATE('2025-05-22', 'YYYY-MM-DD'), 10000029),
(20000085, 'Verificado', 'Almacén_2', TO_DATE('2025-05-21', 'YYYY-MM-DD'), TO_DATE('2025-05-23', 'YYYY-MM-DD'), 10000029),
(20000086, 'Verificado', 'Almacén_5', TO_DATE('2025-05-19', 'YYYY-MM-DD'), TO_DATE('2025-05-21', 'YYYY-MM-DD'), 10000030),
(20000087, 'Por verificar', 'Almacén_1', TO_DATE('2025-05-20', 'YYYY-MM-DD'), TO_DATE('2025-05-22', 'YYYY-MM-DD'), 10000030),
(20000088, 'Verificado', 'Almacén_2', TO_DATE('2025-05-21', 'YYYY-MM-DD'), TO_DATE('2025-05-23', 'YYYY-MM-DD'), 10000030),
(20000089, 'Por verificar', 'Almacén_3', TO_DATE('2025-05-22', 'YYYY-MM-DD'), TO_DATE('2025-05-24', 'YYYY-MM-DD'), 10000030),
(20000090, 'Verificado', 'Almacén_4', TO_DATE('2025-05-23', 'YYYY-MM-DD'), TO_DATE('2025-05-25', 'YYYY-MM-DD'), 10000030),
(20000091, 'Por verificar', 'Almacén_1', TO_DATE('2025-05-20', 'YYYY-MM-DD'), TO_DATE('2025-05-22', 'YYYY-MM-DD'), 10000031),
(20000092, 'Verificado', 'Almacén_2', TO_DATE('2025-05-21', 'YYYY-MM-DD'), TO_DATE('2025-05-23', 'YYYY-MM-DD'), 10000032),
(20000093, 'Por verificar', 'Almacén_3', TO_DATE('2025-05-22', 'YYYY-MM-DD'), TO_DATE('2025-05-24', 'YYYY-MM-DD'), 10000032),
(20000094, 'Por verificar', 'Almacén_3', TO_DATE('2025-05-22', 'YYYY-MM-DD'), TO_DATE('2025-05-24', 'YYYY-MM-DD'), 10000033),
(20000095, 'Verificado', 'Almacén_4', TO_DATE('2025-05-23', 'YYYY-MM-DD'), TO_DATE('2025-05-25', 'YYYY-MM-DD'), 10000033),
(20000096, 'Por verificar', 'Almacén_5', TO_DATE('2025-05-24', 'YYYY-MM-DD'), TO_DATE('2025-05-26', 'YYYY-MM-DD'), 10000033),
(20000097, 'Verificado', 'Almacén_4', TO_DATE('2025-05-23', 'YYYY-MM-DD'), TO_DATE('2025-05-25', 'YYYY-MM-DD'), 10000034),
(20000098, 'Por verificar', 'Almacén_5', TO_DATE('2025-05-24', 'YYYY-MM-DD'), TO_DATE('2025-05-26', 'YYYY-MM-DD'), 10000034),
(20000099, 'Verificado', 'Almacén_1', TO_DATE('2025-05-25', 'YYYY-MM-DD'), TO_DATE('2025-05-27', 'YYYY-MM-DD'), 10000034),
(20000100, 'Por verificar', 'Almacén_2', TO_DATE('2025-05-26', 'YYYY-MM-DD'), TO_DATE('2025-05-28', 'YYYY-MM-DD'), 10000034),
(20000101, 'Por verificar', 'Almacén_5', TO_DATE('2025-05-24', 'YYYY-MM-DD'), TO_DATE('2025-05-26', 'YYYY-MM-DD'), 10000035),
(20000102, 'Verificado', 'Almacén_1', TO_DATE('2025-05-25', 'YYYY-MM-DD'), TO_DATE('2025-05-27', 'YYYY-MM-DD'), 10000035),
(20000103, 'Por verificar', 'Almacén_2', TO_DATE('2025-05-26', 'YYYY-MM-DD'), TO_DATE('2025-05-28', 'YYYY-MM-DD'), 10000035),
(20000104, 'Verificado', 'Almacén_3', TO_DATE('2025-05-27', 'YYYY-MM-DD'), TO_DATE('2025-05-29', 'YYYY-MM-DD'), 10000035),
(20000105, 'Por verificar', 'Almacén_4', TO_DATE('2025-05-28', 'YYYY-MM-DD'), TO_DATE('2025-05-30', 'YYYY-MM-DD'), 10000035),
(20000106, 'Verificado', 'Almacén_1', TO_DATE('2025-05-25', 'YYYY-MM-DD'), TO_DATE('2025-05-27', 'YYYY-MM-DD'), 10000036),
(20000107, 'Por verificar', 'Almacén_2', TO_DATE('2025-05-26', 'YYYY-MM-DD'), TO_DATE('2025-05-28', 'YYYY-MM-DD'), 10000037),
(20000108, 'Verificado', 'Almacén_3', TO_DATE('2025-05-27', 'YYYY-MM-DD'), TO_DATE('2025-05-29', 'YYYY-MM-DD'), 10000037),
(20000109, 'Verificado', 'Almacén_3', TO_DATE('2025-05-27', 'YYYY-MM-DD'), TO_DATE('2025-05-29', 'YYYY-MM-DD'), 10000038),
(20000110, 'Por verificar', 'Almacén_4', TO_DATE('2025-05-28', 'YYYY-MM-DD'), TO_DATE('2025-05-30', 'YYYY-MM-DD'), 10000038),
(20000111, 'Verificado', 'Almacén_5', TO_DATE('2025-05-29', 'YYYY-MM-DD'), TO_DATE('2025-05-31', 'YYYY-MM-DD'), 10000038),
(20000112, 'Por verificar', 'Almacén_4', TO_DATE('2025-05-28', 'YYYY-MM-DD'), TO_DATE('2025-05-30', 'YYYY-MM-DD'), 10000039),
(20000113, 'Verificado', 'Almacén_5', TO_DATE('2025-05-29', 'YYYY-MM-DD'), TO_DATE('2025-05-31', 'YYYY-MM-DD'), 10000039),
(20000114, 'Por verificar', 'Almacén_1', TO_DATE('2025-05-30', 'YYYY-MM-DD'), TO_DATE('2025-06-01', 'YYYY-MM-DD'), 10000039),
(20000115, 'Verificado', 'Almacén_2', TO_DATE('2025-05-31', 'YYYY-MM-DD'), TO_DATE('2025-06-02', 'YYYY-MM-DD'), 10000039),
(20000116, 'Verificado', 'Almacén_5', TO_DATE('2025-05-29', 'YYYY-MM-DD'), TO_DATE('2025-05-31', 'YYYY-MM-DD'), 10000040),
(20000117, 'Por verificar', 'Almacén_1', TO_DATE('2025-05-30', 'YYYY-MM-DD'), TO_DATE('2025-06-01', 'YYYY-MM-DD'), 10000040),
(20000118, 'Verificado', 'Almacén_2', TO_DATE('2025-05-31', 'YYYY-MM-DD'), TO_DATE('2025-06-02', 'YYYY-MM-DD'), 10000040),
(20000119, 'Por verificar', 'Almacén_3', TO_DATE('2025-06-01', 'YYYY-MM-DD'), TO_DATE('2025-06-03', 'YYYY-MM-DD'), 10000040),
(20000120, 'Verificado', 'Almacén_4', TO_DATE('2025-06-02', 'YYYY-MM-DD'), TO_DATE('2025-06-04', 'YYYY-MM-DD'), 10000040),
(20000121, 'Por verificar', 'Almacén_1', TO_DATE('2025-05-30', 'YYYY-MM-DD'), TO_DATE('2025-06-01', 'YYYY-MM-DD'), 10000041),
(20000122, 'Verificado', 'Almacén_2', TO_DATE('2025-05-31', 'YYYY-MM-DD'), TO_DATE('2025-06-02', 'YYYY-MM-DD'), 10000042),
(20000123, 'Por verificar', 'Almacén_3', TO_DATE('2025-06-01', 'YYYY-MM-DD'), TO_DATE('2025-06-03', 'YYYY-MM-DD'), 10000042),
(20000124, 'Por verificar', 'Almacén_3', TO_DATE('2025-06-01', 'YYYY-MM-DD'), TO_DATE('2025-06-03', 'YYYY-MM-DD'), 10000043),
(20000125, 'Verificado', 'Almacén_4', TO_DATE('2025-06-02', 'YYYY-MM-DD'), TO_DATE('2025-06-04', 'YYYY-MM-DD'), 10000043),
(20000126, 'Por verificar', 'Almacén_5', TO_DATE('2025-06-03', 'YYYY-MM-DD'), TO_DATE('2025-06-05', 'YYYY-MM-DD'), 10000043),
(20000127, 'Verificado', 'Almacén_4', TO_DATE('2025-06-02', 'YYYY-MM-DD'), TO_DATE('2025-06-04', 'YYYY-MM-DD'), 10000044),
(20000128, 'Por verificar', 'Almacén_5', TO_DATE('2025-06-03', 'YYYY-MM-DD'), TO_DATE('2025-06-05', 'YYYY-MM-DD'), 10000044),
(20000129, 'Verificado', 'Almacén_1', TO_DATE('2025-06-04', 'YYYY-MM-DD'), TO_DATE('2025-06-06', 'YYYY-MM-DD'), 10000044),
(20000130, 'Por verificar', 'Almacén_2', TO_DATE('2025-06-05', 'YYYY-MM-DD'), TO_DATE('2025-06-07', 'YYYY-MM-DD'), 10000044),
(20000131, 'Por verificar', 'Almacén_5', TO_DATE('2025-06-03', 'YYYY-MM-DD'), TO_DATE('2025-06-05', 'YYYY-MM-DD'), 10000045),
(20000132, 'Verificado', 'Almacén_1', TO_DATE('2025-06-04', 'YYYY-MM-DD'), TO_DATE('2025-06-06', 'YYYY-MM-DD'), 10000045),
(20000133, 'Por verificar', 'Almacén_2', TO_DATE('2025-06-05', 'YYYY-MM-DD'), TO_DATE('2025-06-07', 'YYYY-MM-DD'), 10000045),
(20000134, 'Verificado', 'Almacén_3', TO_DATE('2025-06-06', 'YYYY-MM-DD'), TO_DATE('2025-06-08', 'YYYY-MM-DD'), 10000045),
(20000135, 'Por verificar', 'Almacén_4', TO_DATE('2025-06-07', 'YYYY-MM-DD'), TO_DATE('2025-06-09', 'YYYY-MM-DD'), 10000045),
(20000136, 'Verificado', 'Almacén_1', TO_DATE('2025-06-04', 'YYYY-MM-DD'), TO_DATE('2025-06-06', 'YYYY-MM-DD'), 10000046),
(20000137, 'Por verificar', 'Almacén_2', TO_DATE('2025-06-05', 'YYYY-MM-DD'), TO_DATE('2025-06-07', 'YYYY-MM-DD'), 10000047),
(20000138, 'Verificado', 'Almacén_3', TO_DATE('2025-06-06', 'YYYY-MM-DD'), TO_DATE('2025-06-08', 'YYYY-MM-DD'), 10000047),
(20000139, 'Verificado', 'Almacén_3', TO_DATE('2025-06-06', 'YYYY-MM-DD'), TO_DATE('2025-06-08', 'YYYY-MM-DD'), 10000048),
(20000140, 'Por verificar', 'Almacén_4', TO_DATE('2025-06-07', 'YYYY-MM-DD'), TO_DATE('2025-06-09', 'YYYY-MM-DD'), 10000048),
(20000141, 'Verificado', 'Almacén_5', TO_DATE('2025-06-08', 'YYYY-MM-DD'), TO_DATE('2025-06-10', 'YYYY-MM-DD'), 10000048),
(20000142, 'Por verificar', 'Almacén_4', TO_DATE('2025-06-07', 'YYYY-MM-DD'), TO_DATE('2025-06-09', 'YYYY-MM-DD'), 10000049),
(20000143, 'Verificado', 'Almacén_5', TO_DATE('2025-06-08', 'YYYY-MM-DD'), TO_DATE('2025-06-10', 'YYYY-MM-DD'), 10000049),
(20000144, 'Por verificar', 'Almacén_1', TO_DATE('2025-06-09', 'YYYY-MM-DD'), TO_DATE('2025-06-11', 'YYYY-MM-DD'), 10000049),
(20000145, 'Verificado', 'Almacén_2', TO_DATE('2025-06-10', 'YYYY-MM-DD'), TO_DATE('2025-06-12', 'YYYY-MM-DD'), 10000049),
(20000146, 'Verificado', 'Almacén_5', TO_DATE('2025-06-08', 'YYYY-MM-DD'), TO_DATE('2025-06-10', 'YYYY-MM-DD'), 10000050),
(20000147, 'Por verificar', 'Almacén_1', TO_DATE('2025-06-09', 'YYYY-MM-DD'), TO_DATE('2025-06-11', 'YYYY-MM-DD'), 10000050),
(20000148, 'Verificado', 'Almacén_2', TO_DATE('2025-06-10', 'YYYY-MM-DD'), TO_DATE('2025-06-12', 'YYYY-MM-DD'), 10000050),
(20000149, 'Por verificar', 'Almacén_3', TO_DATE('2025-06-11', 'YYYY-MM-DD'), TO_DATE('2025-06-13', 'YYYY-MM-DD'), 10000050),
(20000150, 'Verificado', 'Almacén_4', TO_DATE('2025-06-12', 'YYYY-MM-DD'), TO_DATE('2025-06-14', 'YYYY-MM-DD'), 10000050);

INSERT INTO PRODUCTO (idProducto, nombre_producto, estado_producto, descripcion, id_paquete)
VALUES
(30000001, 'Laptop', 'Producto dañado', 'Portátil de alto rendimiento con pantalla de 15 pulgadas.', 20000001),
(30000002, 'Smartphone', 'Producto sin daños', 'Teléfono inteligente con la pantalla rota.', 20000002),
(30000003, 'Televisor 4K', 'Producto dañado', 'Smart TV de 55 pulgadas con resolución Ultra HD.', 20000003),
(30000004, 'Refrigerador', 'Producto sin daños', 'Nevera con un golpe en la puerta.', 20000004),
(30000005, 'Auriculares Bluetooth', 'Producto dañado', 'Cascos inalámbricos con un auricular que no funciona.', 20000005),
(30000006, 'Tablet', 'Producto sin daños', 'Tablet ligera con pantalla de 10 pulgadas.', 20000006),
(30000007, 'Cámara', 'Producto dañado', 'Cámara réflex con lente de 18-55mm.', 20000007),
(30000008, 'Router', 'Producto sin daños', 'Router de alta velocidad con WiFi 6.', 20000008),
(30000009, 'Disco duro', 'Producto dañado', 'Disco duro externo de 1TB.', 20000009),
(30000010, 'Teclado', 'Producto sin daños', 'Teclado mecánico retroiluminado.', 20000010),
(30000011, 'Mouse', 'Producto dañado', 'Mouse ergonómico inalámbrico.', 20000011),
(30000012, 'Monitor', 'Producto sin daños', 'Monitor LED de 24 pulgadas.', 20000012),
(30000013, 'Impresora', 'Producto dañado', 'Impresora multifunción con WiFi.', 20000013),
(30000014, 'Laptop', 'Producto sin daños', 'Portátil de alto rendimiento con pantalla de 15 pulgadas.', 20000014),
(30000015, 'Smartphone', 'Producto dañado', 'Teléfono inteligente con la pantalla rota.', 20000015),
(30000016, 'Televisor 4K', 'Producto sin daños', 'Smart TV de 55 pulgadas con resolución Ultra HD.', 20000016),
(30000017, 'Refrigerador', 'Producto dañado', 'Nevera con un golpe en la puerta.', 20000017),
(30000018, 'Auriculares Bluetooth', 'Producto sin daños', 'Cascos inalámbricos con un auricular que no funciona.', 20000018),
(30000019, 'Tablet', 'Producto dañado', 'Tablet ligera con pantalla de 10 pulgadas.', 20000019),
(30000020, 'Cámara', 'Producto sin daños', 'Cámara réflex con lente de 18-55mm.', 20000020),
(30000021, 'Router', 'Producto dañado', 'Router de alta velocidad con WiFi 6.', 20000021),
(30000022, 'Disco duro', 'Producto sin daños', 'Disco duro externo de 1TB.', 20000022),
(30000023, 'Teclado', 'Producto dañado', 'Teclado mecánico retroiluminado.', 20000023),
(30000024, 'Mouse', 'Producto sin daños', 'Mouse ergonómico inalámbrico.', 20000024),
(30000025, 'Monitor', 'Producto dañado', 'Monitor LED de 24 pulgadas.', 20000025),
(30000026, 'Impresora', 'Producto sin daños', 'Impresora multifunción con WiFi.', 20000026),
(30000027, 'Laptop', 'Producto dañado', 'Portátil de alto rendimiento con pantalla de 15 pulgadas.', 20000027),
(30000028, 'Smartphone', 'Producto sin daños', 'Teléfono inteligente con la pantalla rota.', 20000028),
(30000029, 'Televisor 4K', 'Producto dañado', 'Smart TV de 55 pulgadas con resolución Ultra HD.', 20000029),
(30000030, 'Refrigerador', 'Producto sin daños', 'Nevera con un golpe en la puerta.', 20000030),
(30000031, 'Auriculares Bluetooth', 'Producto dañado', 'Cascos inalámbricos con un auricular que no funciona.', 20000031),
(30000032, 'Tablet', 'Producto sin daños', 'Tablet ligera con pantalla de 10 pulgadas.', 20000032),
(30000033, 'Cámara', 'Producto dañado', 'Cámara réflex con lente de 18-55mm.', 20000033),
(30000034, 'Router', 'Producto sin daños', 'Router de alta velocidad con WiFi 6.', 20000034),
(30000035, 'Disco duro', 'Producto dañado', 'Disco duro externo de 1TB.', 20000035),
(30000036, 'Teclado', 'Producto sin daños', 'Teclado mecánico retroiluminado.', 20000036),
(30000037, 'Mouse', 'Producto dañado', 'Mouse ergonómico inalámbrico.', 20000037),
(30000038, 'Monitor', 'Producto sin daños', 'Monitor LED de 24 pulgadas.', 20000038),
(30000039, 'Impresora', 'Producto dañado', 'Impresora multifunción con WiFi.', 20000039),
(30000040, 'Laptop', 'Producto sin daños', 'Portátil de alto rendimiento con pantalla de 15 pulgadas.', 20000040),
(30000041, 'Smartphone', 'Producto dañado', 'Teléfono inteligente con la pantalla rota.', 20000041),
(30000042, 'Televisor 4K', 'Producto sin daños', 'Smart TV de 55 pulgadas con resolución Ultra HD.', 20000042),
(30000043, 'Refrigerador', 'Producto dañado', 'Nevera con un golpe en la puerta.', 20000043),
(30000044, 'Auriculares Bluetooth', 'Producto sin daños', 'Cascos inalámbricos con un auricular que no funciona.', 20000044),
(30000045, 'Tablet', 'Producto dañado', 'Tablet ligera con pantalla de 10 pulgadas.', 20000045),
(30000046, 'Cámara', 'Producto sin daños', 'Cámara réflex con lente de 18-55mm.', 20000046),
(30000047, 'Router', 'Producto dañado', 'Router de alta velocidad con WiFi 6.', 20000047),
(30000048, 'Disco duro', 'Producto sin daños', 'Disco duro externo de 1TB.', 20000048),
(30000049, 'Teclado', 'Producto dañado', 'Teclado mecánico retroiluminado.', 20000049),
(30000050, 'Mouse', 'Producto sin daños', 'Mouse ergonómico inalámbrico.', 20000050),
(30000051, 'Monitor', 'Producto dañado', 'Monitor LED de 24 pulgadas.', 20000051),
(30000052, 'Impresora', 'Producto sin daños', 'Impresora multifunción con WiFi.', 20000052),
(30000053, 'Laptop', 'Producto dañado', 'Portátil de alto rendimiento con pantalla de 15 pulgadas.', 20000053),
(30000054, 'Smartphone', 'Producto sin daños', 'Teléfono inteligente con la pantalla rota.', 20000054),
(30000055, 'Televisor 4K', 'Producto dañado', 'Smart TV de 55 pulgadas con resolución Ultra HD.', 20000055),
(30000056, 'Refrigerador', 'Producto sin daños', 'Nevera con un golpe en la puerta.', 20000056),
(30000057, 'Auriculares Bluetooth', 'Producto dañado', 'Cascos inalámbricos con un auricular que no funciona.', 20000057),
(30000058, 'Tablet', 'Producto sin daños', 'Tablet ligera con pantalla de 10 pulgadas.', 20000058),
(30000059, 'Cámara', 'Producto dañado', 'Cámara réflex con lente de 18-55mm.', 20000059),
(30000060, 'Router', 'Producto sin daños', 'Router de alta velocidad con WiFi 6.', 20000060),
(30000061, 'Disco duro', 'Producto dañado', 'Disco duro externo de 1TB.', 20000061),
(30000062, 'Teclado', 'Producto sin daños', 'Teclado mecánico retroiluminado.', 20000062),
(30000063, 'Mouse', 'Producto dañado', 'Mouse ergonómico inalámbrico.', 20000063),
(30000064, 'Monitor', 'Producto sin daños', 'Monitor LED de 24 pulgadas.', 20000064),
(30000065, 'Impresora', 'Producto dañado', 'Impresora multifunción con WiFi.', 20000065),
(30000066, 'Laptop', 'Producto sin daños', 'Portátil de alto rendimiento con pantalla de 15 pulgadas.', 20000066),
(30000067, 'Smartphone', 'Producto dañado', 'Teléfono inteligente con la pantalla rota.', 20000067),
(30000068, 'Televisor 4K', 'Producto sin daños', 'Smart TV de 55 pulgadas con resolución Ultra HD.', 20000068),
(30000069, 'Refrigerador', 'Producto dañado', 'Nevera con un golpe en la puerta.', 20000069),
(30000070, 'Auriculares Bluetooth', 'Producto sin daños', 'Cascos inalámbricos con un auricular que no funciona.', 20000070),
(30000071, 'Tablet', 'Producto dañado', 'Tablet ligera con pantalla de 10 pulgadas.', 20000071),
(30000072, 'Cámara', 'Producto sin daños', 'Cámara réflex con lente de 18-55mm.', 20000072),
(30000073, 'Router', 'Producto dañado', 'Router de alta velocidad con WiFi 6.', 20000073),
(30000074, 'Disco duro', 'Producto sin daños', 'Disco duro externo de 1TB.', 20000074),
(30000075, 'Teclado', 'Producto dañado', 'Teclado mecánico retroiluminado.', 20000075),
(30000076, 'Mouse', 'Producto sin daños', 'Mouse ergonómico inalámbrico.', 20000076),
(30000077, 'Monitor', 'Producto dañado', 'Monitor LED de 24 pulgadas.', 20000077),
(30000078, 'Impresora', 'Producto sin daños', 'Impresora multifunción con WiFi.', 20000078),
(30000079, 'Laptop', 'Producto dañado', 'Portátil de alto rendimiento con pantalla de 15 pulgadas.', 20000079),
(30000080, 'Smartphone', 'Producto sin daños', 'Teléfono inteligente con la pantalla rota.', 20000080),
(30000081, 'Televisor 4K', 'Producto dañado', 'Smart TV de 55 pulgadas con resolución Ultra HD.', 20000081),
(30000082, 'Refrigerador', 'Producto sin daños', 'Nevera con un golpe en la puerta.', 20000082),
(30000083, 'Auriculares Bluetooth', 'Producto dañado', 'Cascos inalámbricos con un auricular que no funciona.', 20000083),
(30000084, 'Tablet', 'Producto sin daños', 'Tablet ligera con pantalla de 10 pulgadas.', 20000084),
(30000085, 'Cámara', 'Producto dañado', 'Cámara réflex con lente de 18-55mm.', 20000085),
(30000086, 'Router', 'Producto sin daños', 'Router de alta velocidad con WiFi 6.', 20000086),
(30000087, 'Disco duro', 'Producto dañado', 'Disco duro externo de 1TB.', 20000087),
(30000088, 'Teclado', 'Producto sin daños', 'Teclado mecánico retroiluminado.', 20000088),
(30000089, 'Mouse', 'Producto dañado', 'Mouse ergonómico inalámbrico.', 20000089),
(30000090, 'Monitor', 'Producto sin daños', 'Monitor LED de 24 pulgadas.', 20000090),
(30000091, 'Impresora', 'Producto dañado', 'Impresora multifunción con WiFi.', 20000091),
(30000092, 'Laptop', 'Producto sin daños', 'Portátil de alto rendimiento con pantalla de 15 pulgadas.', 20000092),
(30000093, 'Smartphone', 'Producto dañado', 'Teléfono inteligente con la pantalla rota.', 20000093),
(30000094, 'Televisor 4K', 'Producto sin daños', 'Smart TV de 55 pulgadas con resolución Ultra HD.', 20000094),
(30000095, 'Refrigerador', 'Producto dañado', 'Nevera con un golpe en la puerta.', 20000095),
(30000096, 'Auriculares Bluetooth', 'Producto sin daños', 'Cascos inalámbricos con un auricular que no funciona.', 20000096),
(30000097, 'Tablet', 'Producto dañado', 'Tablet ligera con pantalla de 10 pulgadas.', 20000097),
(30000098, 'Cámara', 'Producto sin daños', 'Cámara réflex con lente de 18-55mm.', 20000098),
(30000099, 'Router', 'Producto dañado', 'Router de alta velocidad con WiFi 6.', 20000099),
(30000100, 'Disco duro', 'Producto sin daños', 'Disco duro externo de 1TB.', 20000100),
(30000101, 'Teclado', 'Producto dañado', 'Teclado mecánico retroiluminado.', 20000101),
(30000102, 'Mouse', 'Producto sin daños', 'Mouse ergonómico inalámbrico.', 20000102),
(30000103, 'Monitor', 'Producto dañado', 'Monitor LED de 24 pulgadas.', 20000103),
(30000104, 'Impresora', 'Producto sin daños', 'Impresora multifunción con WiFi.', 20000104),
(30000105, 'Laptop', 'Producto dañado', 'Portátil de alto rendimiento con pantalla de 15 pulgadas.', 20000105),
(30000106, 'Smartphone', 'Producto sin daños', 'Teléfono inteligente con la pantalla rota.', 20000106),
(30000107, 'Televisor 4K', 'Producto dañado', 'Smart TV de 55 pulgadas con resolución Ultra HD.', 20000107),
(30000108, 'Refrigerador', 'Producto sin daños', 'Nevera con un golpe en la puerta.', 20000108),
(30000109, 'Auriculares Bluetooth', 'Producto dañado', 'Cascos inalámbricos con un auricular que no funciona.', 20000109),
(30000110, 'Tablet', 'Producto sin daños', 'Tablet ligera con pantalla de 10 pulgadas.', 20000110),
(30000111, 'Cámara', 'Producto dañado', 'Cámara réflex con lente de 18-55mm.', 20000111),
(30000112, 'Router', 'Producto sin daños', 'Router de alta velocidad con WiFi 6.', 20000112),
(30000113, 'Disco duro', 'Producto dañado', 'Disco duro externo de 1TB.', 20000113),
(30000114, 'Teclado', 'Producto sin daños', 'Teclado mecánico retroiluminado.', 20000114),
(30000115, 'Mouse', 'Producto dañado', 'Mouse ergonómico inalámbrico.', 20000115),
(30000116, 'Monitor', 'Producto sin daños', 'Monitor LED de 24 pulgadas.', 20000116),
(30000117, 'Impresora', 'Producto dañado', 'Impresora multifunción con WiFi.', 20000117),
(30000118, 'Laptop', 'Producto sin daños', 'Portátil de alto rendimiento con pantalla de 15 pulgadas.', 20000118),
(30000119, 'Smartphone', 'Producto dañado', 'Teléfono inteligente con la pantalla rota.', 20000119),
(30000120, 'Televisor 4K', 'Producto sin daños', 'Smart TV de 55 pulgadas con resolución Ultra HD.', 20000120),
(30000121, 'Refrigerador', 'Producto dañado', 'Nevera con un golpe en la puerta.', 20000121),
(30000122, 'Auriculares Bluetooth', 'Producto sin daños', 'Cascos inalámbricos con un auricular que no funciona.', 20000122),
(30000123, 'Tablet', 'Producto dañado', 'Tablet ligera con pantalla de 10 pulgadas.', 20000123),
(30000124, 'Cámara', 'Producto sin daños', 'Cámara réflex con lente de 18-55mm.', 20000124),
(30000125, 'Router', 'Producto dañado', 'Router de alta velocidad con WiFi 6.', 20000125),
(30000126, 'Disco duro', 'Producto sin daños', 'Disco duro externo de 1TB.', 20000126),
(30000127, 'Teclado', 'Producto dañado', 'Teclado mecánico retroiluminado.', 20000127),
(30000128, 'Mouse', 'Producto sin daños', 'Mouse ergonómico inalámbrico.', 20000128),
(30000129, 'Monitor', 'Producto dañado', 'Monitor LED de 24 pulgadas.', 20000129),
(30000130, 'Impresora', 'Producto sin daños', 'Impresora multifunción con WiFi.', 20000130),
(30000131, 'Laptop', 'Producto dañado', 'Portátil de alto rendimiento con pantalla de 15 pulgadas.', 20000131),
(30000132, 'Smartphone', 'Producto sin daños', 'Teléfono inteligente con la pantalla rota.', 20000132),
(30000133, 'Televisor 4K', 'Producto dañado', 'Smart TV de 55 pulgadas con resolución Ultra HD.', 20000133),
(30000134, 'Refrigerador', 'Producto sin daños', 'Nevera con un golpe en la puerta.', 20000134),
(30000135, 'Auriculares Bluetooth', 'Producto dañado', 'Cascos inalámbricos con un auricular que no funciona.', 20000135),
(30000136, 'Tablet', 'Producto sin daños', 'Tablet ligera con pantalla de 10 pulgadas.', 20000136),
(30000137, 'Cámara', 'Producto dañado', 'Cámara réflex con lente de 18-55mm.', 20000137),
(30000138, 'Router', 'Producto sin daños', 'Router de alta velocidad con WiFi 6.', 20000138),
(30000139, 'Disco duro', 'Producto dañado', 'Disco duro externo de 1TB.', 20000139),
(30000140, 'Teclado', 'Producto sin daños', 'Teclado mecánico retroiluminado.', 20000140),
(30000141, 'Mouse', 'Producto dañado', 'Mouse ergonómico inalámbrico.', 20000141),
(30000142, 'Monitor', 'Producto sin daños', 'Monitor LED de 24 pulgadas.', 20000142),
(30000143, 'Impresora', 'Producto dañado', 'Impresora multifunción con WiFi.', 20000143),
(30000144, 'Laptop', 'Producto sin daños', 'Portátil de alto rendimiento con pantalla de 15 pulgadas.', 20000144),
(30000145, 'Smartphone', 'Producto dañado', 'Teléfono inteligente con la pantalla rota.', 20000145),
(30000146, 'Televisor 4K', 'Producto sin daños', 'Smart TV de 55 pulgadas con resolución Ultra HD.', 20000146),
(30000147, 'Refrigerador', 'Producto dañado', 'Nevera con un golpe en la puerta.', 20000147),
(30000148, 'Auriculares Bluetooth', 'Producto sin daños', 'Cascos inalámbricos con un auricular que no funciona.', 20000148),
(30000149, 'Tablet', 'Producto dañado', 'Tablet ligera con pantalla de 10 pulgadas.', 20000149),
(30000150, 'Cámara', 'Producto sin daños', 'Cámara réflex con lente de 18-55mm.', 20000150);


INSERT INTO VEHICULO (idVehiculo, tipo_vehiculo, estado_vehiculo, placa, modelo) VALUES ('VH00000001', 'Furgón', 'En mantenimiento', 'FIB-116', 'Hyundai H350');
INSERT INTO VEHICULO (idVehiculo, tipo_vehiculo, estado_vehiculo, placa, modelo) VALUES ('VH00000002', 'Camión', 'En mantenimiento', 'GIA-992', 'Volvo FH');
INSERT INTO VEHICULO (idVehiculo, tipo_vehiculo, estado_vehiculo, placa, modelo) VALUES ('VH00000003', 'Trailer', 'En mantenimiento', 'UAD-267', 'Toyota Hilux');
INSERT INTO VEHICULO (idVehiculo, tipo_vehiculo, estado_vehiculo, placa, modelo) VALUES ('VH00000004', 'Camión', 'En mantenimiento', 'HDS-793', 'Isuzu NQR');
INSERT INTO VEHICULO (idVehiculo, tipo_vehiculo, estado_vehiculo, placa, modelo) VALUES ('VH00000005', 'Minivan', 'Disponible', 'IIC-650', 'Scania R450');
INSERT INTO VEHICULO (idVehiculo, tipo_vehiculo, estado_vehiculo, placa, modelo) VALUES ('VH00000006', 'Camión', 'En mantenimiento', 'KOV-236', 'Volvo FH');
INSERT INTO VEHICULO (idVehiculo, tipo_vehiculo, estado_vehiculo, placa, modelo) VALUES ('VH00000007', 'Camión', 'Fuera de servicio', 'QRR-388', 'Toyota Hilux');
INSERT INTO VEHICULO (idVehiculo, tipo_vehiculo, estado_vehiculo, placa, modelo) VALUES ('VH00000008', 'Camioneta', 'Operativo', 'PTY-368', 'MAN TGS');
INSERT INTO VEHICULO (idVehiculo, tipo_vehiculo, estado_vehiculo, placa, modelo) VALUES ('VH00000009', 'Furgón', 'Operativo', 'VDO-885', 'Isuzu NQR');
INSERT INTO VEHICULO (idVehiculo, tipo_vehiculo, estado_vehiculo, placa, modelo) VALUES ('VH00000010', 'Camioneta', 'Fuera de servicio', 'MGX-946', 'Volvo FH');
INSERT INTO VEHICULO (idVehiculo, tipo_vehiculo, estado_vehiculo, placa, modelo) VALUES ('VH00000011', 'Camioneta', 'Operativo', 'LLX-436', 'MAN TGS');
INSERT INTO VEHICULO (idVehiculo, tipo_vehiculo, estado_vehiculo, placa, modelo) VALUES ('VH00000012', 'Furgón', 'Disponible', 'CUQ-374', 'Mercedes Sprinter');
INSERT INTO VEHICULO (idVehiculo, tipo_vehiculo, estado_vehiculo, placa, modelo) VALUES ('VH00000013', 'Camión', 'Operativo', 'FZS-572', 'Mercedes Sprinter');
INSERT INTO VEHICULO (idVehiculo, tipo_vehiculo, estado_vehiculo, placa, modelo) VALUES ('VH00000014', 'Minivan', 'Disponible', 'EWB-808', 'Hyundai H350');
INSERT INTO VEHICULO (idVehiculo, tipo_vehiculo, estado_vehiculo, placa, modelo) VALUES ('VH00000015', 'Camioneta', 'Disponible', 'XNV-104', 'Hyundai H350');
INSERT INTO VEHICULO (idVehiculo, tipo_vehiculo, estado_vehiculo, placa, modelo) VALUES ('VH00000016', 'Furgón', 'Fuera de servicio', 'CLR-357', 'Volvo FH');
INSERT INTO VEHICULO (idVehiculo, tipo_vehiculo, estado_vehiculo, placa, modelo) VALUES ('VH00000017', 'Furgón', 'Fuera de servicio', 'QOQ-191', 'Isuzu NQR');
INSERT INTO VEHICULO (idVehiculo, tipo_vehiculo, estado_vehiculo, placa, modelo) VALUES ('VH00000018', 'Camioneta', 'Disponible', 'JMH-926', 'Mercedes Sprinter');
INSERT INTO VEHICULO (idVehiculo, tipo_vehiculo, estado_vehiculo, placa, modelo) VALUES ('VH00000019', 'Furgón', 'Disponible', 'DTA-256', 'Volvo FH');
INSERT INTO VEHICULO (idVehiculo, tipo_vehiculo, estado_vehiculo, placa, modelo) VALUES ('VH00000020', 'Camioneta', 'En mantenimiento', 'FIU-266', 'Hyundai H350');
INSERT INTO VEHICULO (idVehiculo, tipo_vehiculo, estado_vehiculo, placa, modelo) VALUES ('VH00000021', 'Camión', 'Operativo', 'KQK-393', 'Toyota Hilux');
INSERT INTO VEHICULO (idVehiculo, tipo_vehiculo, estado_vehiculo, placa, modelo) VALUES ('VH00000022', 'Camioneta', 'Disponible', 'YWV-995', 'Isuzu NQR');
INSERT INTO VEHICULO (idVehiculo, tipo_vehiculo, estado_vehiculo, placa, modelo) VALUES ('VH00000023', 'Camioneta', 'Operativo', 'TKB-976', 'Hyundai H350');
INSERT INTO VEHICULO (idVehiculo, tipo_vehiculo, estado_vehiculo, placa, modelo) VALUES ('VH00000024', 'Minivan', 'Operativo', 'AGH-792', 'MAN TGS');
INSERT INTO VEHICULO (idVehiculo, tipo_vehiculo, estado_vehiculo, placa, modelo) VALUES ('VH00000025', 'Trailer', 'En mantenimiento', 'QFW-643', 'MAN TGS');
INSERT INTO VEHICULO (idVehiculo, tipo_vehiculo, estado_vehiculo, placa, modelo) VALUES ('VH00000026', 'Trailer', 'Fuera de servicio', 'LQX-264', 'MAN TGS');
INSERT INTO VEHICULO (idVehiculo, tipo_vehiculo, estado_vehiculo, placa, modelo) VALUES ('VH00000027', 'Camión', 'En mantenimiento', 'FHV-328', 'MAN TGS');
INSERT INTO VEHICULO (idVehiculo, tipo_vehiculo, estado_vehiculo, placa, modelo) VALUES ('VH00000028', 'Trailer', 'Fuera de servicio', 'PGJ-831', 'MAN TGS');
INSERT INTO VEHICULO (idVehiculo, tipo_vehiculo, estado_vehiculo, placa, modelo) VALUES ('VH00000029', 'Camión', 'En mantenimiento', 'HMW-250', 'Volvo FH');
INSERT INTO VEHICULO (idVehiculo, tipo_vehiculo, estado_vehiculo, placa, modelo) VALUES ('VH00000030', 'Camioneta', 'Operativo', 'IRD-799', 'Scania R450');
INSERT INTO VEHICULO (idVehiculo, tipo_vehiculo, estado_vehiculo, placa, modelo) VALUES ('VH00000031', 'Furgón', 'Fuera de servicio', 'JTV-409', 'Isuzu NQR');
INSERT INTO VEHICULO (idVehiculo, tipo_vehiculo, estado_vehiculo, placa, modelo) VALUES ('VH00000032', 'Camioneta', 'Operativo', 'XOS-529', 'Volvo FH');
INSERT INTO VEHICULO (idVehiculo, tipo_vehiculo, estado_vehiculo, placa, modelo) VALUES ('VH00000033', 'Furgón', 'Operativo', 'OPA-664', 'Mercedes Sprinter');
INSERT INTO VEHICULO (idVehiculo, tipo_vehiculo, estado_vehiculo, placa, modelo) VALUES ('VH00000034', 'Minivan', 'Fuera de servicio', 'XAH-517', 'Toyota Hilux');
INSERT INTO VEHICULO (idVehiculo, tipo_vehiculo, estado_vehiculo, placa, modelo) VALUES ('VH00000035', 'Furgón', 'Fuera de servicio', 'CQE-256', 'Isuzu NQR');
INSERT INTO VEHICULO (idVehiculo, tipo_vehiculo, estado_vehiculo, placa, modelo) VALUES ('VH00000036', 'Trailer', 'Fuera de servicio', 'QFT-148', 'Mercedes Sprinter');
INSERT INTO VEHICULO (idVehiculo, tipo_vehiculo, estado_vehiculo, placa, modelo) VALUES ('VH00000037', 'Camioneta', 'Operativo', 'MLK-918', 'Toyota Hilux');
INSERT INTO VEHICULO (idVehiculo, tipo_vehiculo, estado_vehiculo, placa, modelo) VALUES ('VH00000038', 'Camión', 'En mantenimiento', 'UZS-467', 'MAN TGS');
INSERT INTO VEHICULO (idVehiculo, tipo_vehiculo, estado_vehiculo, placa, modelo) VALUES ('VH00000039', 'Minivan', 'Disponible', 'MAR-629', 'Scania R450');
INSERT INTO VEHICULO (idVehiculo, tipo_vehiculo, estado_vehiculo, placa, modelo) VALUES ('VH00000040', 'Camión', 'En mantenimiento', 'WIA-571', 'Toyota Hilux');


    INSERT INTO Criticidad (Id_criticidad, Nivel)
    VALUES
    (1, 'Bajo'),
    (2, 'Medio'),
    (3, 'Alto');

    INSERT INTO Categoria_Almacen (Id_categoria, Nombre_categoria)
    VALUES
    (1, 'Insumos'),
    (2, 'Herramientas'),
    (3, 'Equipos');

    INSERT INTO Estado_Almacen (Id_estado, Nombre_estado)
    VALUES
    (1, 'Activo'),
    (2, 'Inactivo');

    INSERT INTO Tipo_Equipo_Soporte (Id_tipo, Nombre_tipo)
    VALUES
    (1, 'Montacarga'),
    (2, 'Estoca'),
    (3, 'Transpaleta electrica'),
    (4, 'Equipos de escaneo'),
    (5, 'Torre de iluminación'),

    INSERT INTO Disponibilidad_Equipo_Soporte (Id_disponibilidad, Nombre_disponibilidad)
    VALUES
    (1, 'Disponible'),
    (2, 'Ocupado');

    INSERT INTO Estado_Equipo_Soporte (Id_estado, Nombre_estado)
    VALUES
    (1, 'Optimo'),
    (2, 'Bueno'),
    (3, 'Regular'),
    (4, 'Deficiente');

    INSERT INTO Tipo_maquina (id_tipo_maquina, nombre_tipo) VALUES
    (1, 'Apilador de contenedores'),
    (2, 'Montacarga eléctrico'),
    (3, 'Elevador tijera'),
    (4, 'Generador electrico'),
    (5, 'Cargador');

    INSERT INTO Estado_maquina (id_estado_maquina, nombre_estado) VALUES
    (1, 'Operativa'),
    (2, 'Mantenimiento'),
    (3, 'Fuera de servicio');

    INSERT INTO Marca_maquina (id_marca_maquina, nombre_marca) VALUES
    ( 1, 'Caterpellir (CAT)' ),
    ( 2 , 'Komatsu' ),
    ( 3 , 'Sandvik' ),
    ( 4 , 'Atlas Copco' ),
    ( 5 , 'John Deere' ),
    ( 6 , 'Volvo' ),
    ( 7 , 'JLG' ),
    ( 8 , 'Manitou' ),
    ( 9 , 'Epiroc' );

    INSERT INTO Tipo_mantenimiento (id_tipo_mant, nombre_tipo_mant) VALUES
    (1, 'Preventivo'),
    (2, 'Correctivo'),
    (3, 'Predictivo');

    INSERT INTO Estado_mantto (id_estado, estado) VALUES
    (1, 'Borrador'),
    (2, 'Notificado'),
    (3, 'Aceptado'),
    (4, 'Rechazado'),
    (5, 'En curso'),
    (6, 'Completa'),
    (7, 'Pendiente'),
    (8, 'Eliminado');

	INSERT INTO Registro ( Fecha_registro,Id_empleado, Id_act_mantto, Calificacion, Observaciones) VALUES
	('2025-04-14', 1, 1, 2, 'Reparación de motor'),
	('2025-04-16', 2, 3, 5, 'Cambio de filtros'),
	('2025-04-18', 3, 2, 1, 'Mantenimiento general'),
	('2025-04-21', 4, 4, 2, 'Mantenimiento correctivo'),
	('2025-04-23', 5, 5, 3, 'Engrasamiento de partes');

  INSERT INTO Almacen_Equipos (Categoria_Almacen, Estado_Almacen, Tipo_Equipo_Soporte, Disponibilidad_Equipo_Soporte, Estado_Equipo_Soporte)
  VALUES
('Insumos', 'Activo', 'Torre de iluminación', 'Ocupado', 'Optimo');
('Herramientas', 'Activo', 'Estoca', 'Disponible', 'Optimo');
('Equipos', 'Activo', 'Equipos de escaneo', 'Ocupado', 'Deficiente');
('Herramientas', 'Inactivo', 'Torre de iluminación', 'Ocupado', 'Regular');
('Insumos', 'Inactivo', 'Equipos de escaneo', 'Ocupado', 'Optimo');
('Insumos', 'Inactivo', 'Transpaleta electrica', 'Disponible', 'Bueno');
('Insumos', 'Inactivo', 'Equipos de escaneo', 'Disponible', 'Optimo');
('Insumos', 'Activo', 'Montacarga', 'Disponible', 'Bueno');
('Insumos', 'Inactivo', 'Equipos de escaneo', 'Ocupado', 'Regular');
('Herramientas', 'Inactivo', 'Montacarga', 'Ocupado', 'Regular');
('Equipos', 'Inactivo', 'Estoca', 'Disponible', 'Optimo');
('Equipos', 'Inactivo', 'Torre de iluminación', 'Ocupado', 'Regular');
('Herramientas', 'Activo', 'Transpaleta electrica', 'Ocupado', 'Deficiente');
('Herramientas', 'Inactivo', 'Torre de iluminación', 'Ocupado', 'Optimo');
('Insumos', 'Inactivo', 'Montacarga', 'Disponible', 'Bueno');
('Equipos', 'Activo', 'Equipos de escaneo', 'Ocupado', 'Regular');
('Insumos', 'Activo', 'Estoca', 'Ocupado', 'Regular');
('Equipos', 'Inactivo', 'Montacarga', 'Ocupado', 'Optimo');
('Insumos', 'Activo', 'Torre de iluminación', 'Disponible', 'Bueno');
('Herramientas', 'Activo', 'Montacarga', 'Ocupado', 'Optimo');
('Insumos', 'Inactivo', 'Torre de iluminación', 'Disponible', 'Bueno');
('Equipos', 'Activo', 'Montacarga', 'Ocupado', 'Bueno');
('Herramientas', 'Inactivo', 'Torre de iluminación', 'Disponible', 'Optimo');
('Insumos', 'Activo', 'Transpaleta electrica', 'Ocupado', 'Regular');
('Equipos', 'Activo', 'Estoca', 'Disponible', 'Optimo');
('Equipos', 'Inactivo', 'Estoca', 'Ocupado', 'Optimo');
('Herramientas', 'Inactivo', 'Equipos de escaneo', 'Ocupado', 'Bueno');
('Equipos', 'Inactivo', 'Equipos de escaneo', 'Disponible', 'Bueno');
('Equipos', 'Activo', 'Transpaleta electrica', 'Disponible', 'Bueno');
('Insumos', 'Activo', 'Transpaleta electrica', 'Disponible', 'Deficiente');
('Equipos', 'Inactivo', 'Equipos de escaneo', 'Disponible', 'Deficiente');
('Equipos', 'Activo', 'Transpaleta electrica', 'Disponible', 'Deficiente');
('Herramientas', 'Inactivo', 'Transpaleta electrica', 'Ocupado', 'Deficiente');
('Equipos', 'Inactivo', 'Equipos de escaneo', 'Disponible', 'Bueno');
('Equipos', 'Activo', 'Equipos de escaneo', 'Ocupado', 'Bueno');
('Equipos', 'Inactivo', 'Torre de iluminación', 'Disponible', 'Deficiente');
('Insumos', 'Activo', 'Transpaleta electrica', 'Disponible', 'Deficiente');
('Herramientas', 'Activo', 'Torre de iluminación', 'Ocupado', 'Deficiente');
('Herramientas', 'Inactivo', 'Equipos de escaneo', 'Ocupado', 'Bueno');
('Insumos', 'Inactivo', 'Transpaleta electrica', 'Ocupado', 'Regular');
('Insumos', 'Activo', 'Equipos de escaneo', 'Disponible', 'Deficiente');
('Herramientas', 'Inactivo', 'Torre de iluminación', 'Ocupado', 'Optimo');
('Herramientas', 'Activo', 'Equipos de escaneo', 'Disponible', 'Bueno');
('Equipos', 'Activo', 'Transpaleta electrica', 'Ocupado', 'Deficiente');
('Herramientas', 'Activo', 'Torre de iluminación', 'Ocupado', 'Optimo');
('Equipos', 'Activo', 'Torre de iluminación', 'Disponible', 'Optimo');
('Insumos', 'Inactivo', 'Torre de iluminación', 'Disponible', 'Optimo');
('Herramientas', 'Inactivo', 'Montacarga', 'Disponible', 'Deficiente');
('Insumos', 'Activo', 'Equipos de escaneo', 'Disponible', 'Regular');
('Equipos', 'Inactivo', 'Transpaleta electrica', 'Ocupado', 'Optimo');

-- Inserciones para tabla de Máquinas y Mantenimiento
INSERT INTO Maquinas_Mantenimiento (Tipo_Maquina, Estado_Maquina, Marca_Maquina, Tipo_Mantenimiento, Estado_Mantenimiento)
VALUES
('Elevador tijera', 'Fuera de servicio', 'Volvo', 'Correctivo', 'Rechazado');
('Elevador tijera', 'Fuera de servicio', 'JLG', 'Predictivo', 'Rechazado');
('Apilador de contenedores', 'Operativa', 'JLG', 'Predictivo', 'Rechazado');
('Montacarga eléctrico', 'Mantenimiento', 'Volvo', 'Preventivo', 'Pendiente');
('Montacarga eléctrico', 'Fuera de servicio', 'Caterpellir (CAT)', 'Predictivo', 'Rechazado');
('Montacarga eléctrico', 'Operativa', 'John Deere', 'Predictivo', 'Pendiente');
('Apilador de contenedores', 'Operativa', 'Volvo', 'Correctivo', 'Borrador');
('Montacarga eléctrico', 'Fuera de servicio', 'John Deere', 'Correctivo', 'Rechazado');
('Generador electrico', 'Mantenimiento', 'Epiroc', 'Predictivo', 'Pendiente');
('Montacarga eléctrico', 'Fuera de servicio', 'Atlas Copco', 'Correctivo', 'Borrador');
('Generador electrico', 'Operativa', 'Manitou', 'Preventivo', 'Aceptado');
('Apilador de contenedores', 'Mantenimiento', 'Sandvik', 'Predictivo', 'Pendiente');
('Elevador tijera', 'Operativa', 'Volvo', 'Correctivo', 'Notificado');
('Apilador de contenedores', 'Mantenimiento', 'Epiroc', 'Predictivo', 'Notificado');
('Generador electrico', 'Operativa', 'Manitou', 'Correctivo', 'Rechazado');
('Cargador', 'Mantenimiento', 'Volvo', 'Correctivo', 'Aceptado');
('Montacarga eléctrico', 'Fuera de servicio', 'Epiroc', 'Correctivo', 'Notificado');
('Montacarga eléctrico', 'Operativa', 'Epiroc', 'Preventivo', 'Completa');
('Montacarga eléctrico', 'Fuera de servicio', 'JLG', 'Predictivo', 'Notificado');
('Generador electrico', 'Mantenimiento', 'Volvo', 'Predictivo', 'Aceptado');
('Elevador tijera', 'Operativa', 'Epiroc', 'Preventivo', 'Notificado');
('Elevador tijera', 'Fuera de servicio', 'John Deere', 'Correctivo', 'Completa');
('Elevador tijera', 'Operativa', 'Atlas Copco', 'Preventivo', 'Notificado');
('Generador electrico', 'Operativa', 'Volvo', 'Predictivo', 'En curso');
('Montacarga eléctrico', 'Mantenimiento', 'Sandvik', 'Correctivo', 'Aceptado');
('Cargador', 'Fuera de servicio', 'JLG', 'Preventivo', 'Aceptado');
('Elevador tijera', 'Operativa', 'Manitou', 'Predictivo', 'Borrador');
('Apilador de contenedores', 'Mantenimiento', 'Atlas Copco', 'Predictivo', 'Notificado');
('Cargador', 'Operativa', 'JLG', 'Predictivo', 'Borrador');
('Montacarga eléctrico', 'Fuera de servicio', 'Komatsu', 'Preventivo', 'Eliminado');
('Apilador de contenedores', 'Operativa', 'JLG', 'Predictivo', 'Notificado');
('Apilador de contenedores', 'Fuera de servicio', 'Epiroc', 'Predictivo', 'Completa');
('Generador electrico', 'Operativa', 'JLG', 'Correctivo', 'Eliminado');
('Elevador tijera', 'Fuera de servicio', 'Caterpellir (CAT)', 'Correctivo', 'Completa');
('Apilador de contenedores', 'Operativa', 'Komatsu', 'Preventivo', 'Borrador');
('Apilador de contenedores', 'Fuera de servicio', 'Caterpellir (CAT)', 'Correctivo', 'Aceptado');
('Montacarga eléctrico', 'Fuera de servicio', 'Manitou', 'Preventivo', 'Borrador');
('Elevador tijera', 'Fuera de servicio', 'Atlas Copco', 'Predictivo', 'Eliminado');
('Montacarga eléctrico', 'Operativa', 'Epiroc', 'Correctivo', 'Eliminado');
('Apilador de contenedores', 'Mantenimiento', 'Sandvik', 'Correctivo', 'Pendiente');
('Apilador de contenedores', 'Operativa', 'Caterpellir (CAT)', 'Preventivo', 'Borrador');
('Generador electrico', 'Mantenimiento', 'John Deere', 'Preventivo', 'Borrador');
('Generador electrico', 'Fuera de servicio', 'Sandvik', 'Predictivo', 'Pendiente');
('Apilador de contenedores', 'Mantenimiento', 'Sandvik', 'Correctivo', 'Borrador');
('Generador electrico', 'Mantenimiento', 'John Deere', 'Preventivo', 'Aceptado');
('Cargador', 'Fuera de servicio', 'Sandvik', 'Predictivo', 'Eliminado');
('Generador electrico', 'Fuera de servicio', 'Komatsu', 'Preventivo', 'Rechazado');
('Montacarga eléctrico', 'Operativa', 'Atlas Copco', 'Correctivo', 'Eliminado');
('Elevador tijera', 'Fuera de servicio', 'Epiroc', 'Predictivo', 'Aceptado');
S ('Apilador de contenedores', 'Mantenimiento', 'Epiroc', 'Preventivo', 'Eliminado');

-- Inserciones para tabla de Registro
INSERT INTO Registro (Fecha_registro, Id_empleado, Id_act_mantto, Calificacion, Observaciones)
VALUES ('2025-04-23', 5, 10, 5, 'Cambio de filtro');
('2025-04-10', 2, 6, 3, 'Reemplazo de batería');
('2025-04-12', 6, 1, 2, 'Revisión de frenos');
('2025-04-02', 5, 3, 4, 'Cambio de filtro');
('2025-04-17', 4, 1, 3, 'Reemplazo de batería');
('2025-04-04', 4, 7, 3, 'Cambio de filtro');
('2025-04-11', 3, 9, 2, 'Ajuste de motor');
('2025-04-06', 1, 1, 3, 'Prueba de funcionamiento');
('2025-04-26', 2, 6, 3, 'Recarga de combustible');
('2025-04-16', 2, 4, 2, 'Reemplazo de batería');
('2025-04-08', 4, 2, 5, 'Revisión de sistema hidráulico');
('2025-04-13', 6, 1, 3, 'Revisión de frenos');
('2025-04-02', 9, 6, 5, 'Lubricación');
('2025-04-10', 5, 2, 1, 'Revisión de frenos');
('2025-04-20', 1, 7, 5, 'Revisión de sistema hidráulico');
('2025-04-02', 7, 10, 1, 'Recarga de combustible');
('2025-04-27', 9, 5, 1, 'Ajuste de motor');
('2025-04-09', 6, 2, 1, 'Limpieza general');
('2025-04-26', 10, 7, 2, 'Prueba de funcionamiento');
('2025-04-10', 4, 7, 5, 'Reemplazo de batería');
('2025-04-19', 9, 3, 1, 'Recarga de combustible');
('2025-04-03', 2, 6, 2, 'Revisión de sistema hidráulico');
('2025-04-14', 2, 7, 1, 'Cambio de piezas');
('2025-04-28', 8, 4, 2, 'Reemplazo de batería');
('2025-04-27', 9, 3, 4, 'Prueba de funcionamiento');
('2025-04-23', 7, 1, 2, 'Revisión de frenos');
('2025-04-16', 10, 4, 5, 'Prueba de funcionamiento');
('2025-04-08', 3, 7, 4, 'Reemplazo de batería');
('2025-04-02', 4, 10, 5, 'Revisión de frenos');
('2025-04-29', 9, 3, 3, 'Prueba de funcionamiento');
('2025-04-29', 10, 5, 4, 'Recarga de combustible');
('2025-04-19', 1, 5, 3, 'Limpieza general');
('2025-04-23', 3, 3, 3, 'Lubricación');
('2025-04-28', 7, 7, 3, 'Revisión de frenos');
('2025-04-09', 2, 3, 3, 'Recarga de combustible');
('2025-04-18', 9, 8, 4, 'Revisión de frenos');
('2025-04-21', 6, 4, 5, 'Ajuste de motor');
('2025-04-18', 4, 5, 3, 'Reemplazo de batería');
('2025-04-25', 1, 5, 4, 'Revisión de sistema hidráulico');
('2025-04-06', 10, 6, 2, 'Ajuste de motor');
('2025-04-09', 7, 8, 5, 'Reemplazo de batería');
('2025-04-16', 2, 7, 4, 'Recarga de combustible');
('2025-04-11', 1, 1, 1, 'Recarga de combustible');
('2025-04-28', 5, 9, 5, 'Cambio de piezas');
('2025-04-12', 4, 2, 4, 'Reemplazo de batería');
('2025-04-16', 3, 5, 3, 'Lubricación');
('2025-04-08', 9, 1, 5, 'Cambio de filtro');
('2025-04-09', 4, 9, 3, 'Revisión de sistema hidráulico');
('2025-04-21', 6, 6, 5, 'Recarga de combustible');
('2025-04-17', 2, 3, 4, 'Revisión de sistema hidráulico');



INSERT INTO ORDEN_TRANSPORTE VALUES (1,1,'ALMACEN_TRUJILLO','ALMACEN_LIMA',TO_DATE('2023-10-01','YYYY-MM-DD'),TO_TIMESTAMP('2023-10-02 14:30:00','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO ORDEN_TRANSPORTE VALUES (2,2,'ALMACEN_AREQUIPA','ALMACEN_LIMA',TO_DATE('2023-10-02','YYYY-MM-DD'),TO_TIMESTAMP('2023-10-03 16:45:00','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO ORDEN_TRANSPORTE VALUES (3,3,'ALMACEN_PIURA','ALMACEN_LIMA',TO_DATE('2023-10-03','YYYY-MM-DD'),TO_TIMESTAMP('2023-10-04 11:20:00','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO ORDEN_TRANSPORTE VALUES (4,4,'ALMACEN_CUSCO','ALMACEN_LIMA',TO_DATE('2023-10-04','YYYY-MM-DD'),TO_TIMESTAMP('2023-10-05 18:30:00','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO ORDEN_TRANSPORTE VALUES (5,5,'ALMACEN_ICA','ALMACEN_LIMA',TO_DATE('2023-10-05','YYYY-MM-DD'),TO_TIMESTAMP('2023-10-06 12:15:00','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO ORDEN_TRANSPORTE VALUES (6,6,'ALMACEN_HUANCAYO','ALMACEN_LIMA',TO_DATE('2023-10-07','YYYY-MM-DD'),TO_TIMESTAMP('2023-10-08 13:10:00','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO ORDEN_TRANSPORTE VALUES (7,7,'ALMACEN_TACNA','ALMACEN_LIMA',TO_DATE('2023-10-08','YYYY-MM-DD'),TO_TIMESTAMP('2023-10-09 17:20:00','YYYY-MM-DD HH24:MI:SS'));


INSERT INTO GUIA_REMISION (idGuiaRemision, idVehiculo, idCliente, ruc_empresa, fecha_emision, fecha_traslado, ID_ORDEN_TRANSPORTE) 
VALUES (1, 1, 1, '2073337616', TO_DATE('2025-05-08','YYYY-MM-DD'), TO_DATE('2025-04-26','YYYY-MM-DD'), 1);
INSERT INTO GUIA_REMISION (idGuiaRemision, idVehiculo, idCliente, ruc_empresa, fecha_emision, fecha_traslado, ID_ORDEN_TRANSPORTE) 
VALUES (2, 2, 2, '2036749864', TO_DATE('2025-04-28','YYYY-MM-DD'), TO_DATE('2025-04-25','YYYY-MM-DD'), 2);
INSERT INTO GUIA_REMISION (idGuiaRemision, idVehiculo, idCliente, ruc_empresa, fecha_emision, fecha_traslado, ID_ORDEN_TRANSPORTE) 
VALUES (3, 3, 3, '2062262409', TO_DATE('2025-04-30','YYYY-MM-DD'), TO_DATE('2025-05-04','YYYY-MM-DD'), 3);
INSERT INTO GUIA_REMISION (idGuiaRemision, idVehiculo, idCliente, ruc_empresa, fecha_emision, fecha_traslado, ID_ORDEN_TRANSPORTE) 
VALUES (4, 4, 4, '2045462024', TO_DATE('2025-05-04','YYYY-MM-DD'), TO_DATE('2025-05-07','YYYY-MM-DD'), 4);
INSERT INTO GUIA_REMISION (idGuiaRemision, idVehiculo, idCliente, ruc_empresa, fecha_emision, fecha_traslado, ID_ORDEN_TRANSPORTE) 
VALUES (5, 5, 5, '2089994359', TO_DATE('2025-04-25','YYYY-MM-DD'), TO_DATE('2025-05-03','YYYY-MM-DD'), 5);
INSERT INTO GUIA_REMISION (idGuiaRemision, idVehiculo, idCliente, ruc_empresa, fecha_emision, fecha_traslado, ID_ORDEN_TRANSPORTE) 
VALUES (6, 6, 6, '2095134821', TO_DATE('2025-05-02','YYYY-MM-DD'), TO_DATE('2025-04-27','YYYY-MM-DD'), 6);
INSERT INTO GUIA_REMISION (idGuiaRemision, idVehiculo, idCliente, ruc_empresa, fecha_emision, fecha_traslado, ID_ORDEN_TRANSPORTE) 
VALUES (7, 7, 7, '2088602774', TO_DATE('2025-05-06','YYYY-MM-DD'), TO_DATE('2025-05-04','YYYY-MM-DD'), 7);


INSERT INTO INFORME_ENTREGA VALUES (1, 1, TO_DATE('2023-10-02','YYYY-MM-DD'), 'ENTREGADO', 'Juan Pérez');
INSERT INTO INFORME_ENTREGA VALUES (2, 2, TO_DATE('2023-10-05','YYYY-MM-DD'), 'ENTREGADO_CON_RETRASO', 'María Gómez');
INSERT INTO INFORME_ENTREGA VALUES (3, 3, TO_DATE('2023-10-06','YYYY-MM-DD'), 'ENTREGA_PARCIAL', 'Carlos Rojas');
INSERT INTO INFORME_ENTREGA VALUES (4, 4, TO_DATE('2023-10-08','YYYY-MM-DD'), 'RECHAZADO', 'Luisa Torres');
INSERT INTO INFORME_ENTREGA VALUES (5, 5, TO_DATE('2023-10-17','YYYY-MM-DD'), 'ENTREGADO_FIRMADO', 'Roberto Sánchez');
INSERT INTO INFORME_ENTREGA VALUES (6, 6, TO_DATE('2023-10-20','YYYY-MM-DD'), 'PENDIENTE_VERIFICACION', 'Pedro Vargas');


INSERT INTO INCIDENCIAS VALUES (1, 1, 1, 'HUMEDAD', 'Paquetes mojados por lluvia intensa durante el transporte sin protección adecuada', TO_DATE('2023-10-06','YYYY-MM-DD'));
INSERT INTO INCIDENCIAS VALUES (2, 2, 2, 'HUMEDAD', 'Condensación en contenedor por cambio brusco de temperatura', TO_DATE('2023-10-08','YYYY-MM-DD'));
INSERT INTO INCIDENCIAS VALUES (3, 3, 3, 'CONTAMINACION', 'Derrame de aceite de motor sobre mercancía por fuga en el vehículo', TO_DATE('2023-10-17','YYYY-MM-DD'));
INSERT INTO INCIDENCIAS VALUES (4, 4, 4, 'CONTAMINACION', 'Productos alimenticios contaminados por químicos de limpieza', TO_DATE('2023-10-18','YYYY-MM-DD'));
INSERT INTO INCIDENCIAS VALUES (5, 5, 5, 'DAÑO FISICO', 'Cajas colapsadas por apilamiento incorrecto durante el viaje', TO_DATE('2023-10-20','YYYY-MM-DD'));
INSERT INTO INCIDENCIAS VALUES (6, 6, 6, 'DAÑO FISICO', 'Rotura de vidrios por impacto durante la descarga', TO_DATE('2023-10-22','YYYY-MM-DD'));
INSERT INTO INCIDENCIAS VALUES (7, 7, 7, 'RETRASO', 'Entrega fuera de plazo por avería mecánica del vehículo', TO_DATE('2023-10-25','YYYY-MM-DD'));


INSERT INTO FOTO_INCIDENCIAS VALUES (1, 1, 'image/jpeg1', 'daño_caja1.jpg', TO_DATE('2023-10-06','YYYY-MM-DD'));
INSERT INTO FOTO_INCIDENCIAS VALUES (2, 2, 'image/jpeg2', 'daño_caja2.jpg', TO_DATE('2023-10-08','YYYY-MM-DD'));
INSERT INTO FOTO_INCIDENCIAS VALUES (3, 3, 'image/jpeg3', 'daño_caja3.jpg', TO_DATE('2023-10-17','YYYY-MM-DD'));
INSERT INTO FOTO_INCIDENCIAS VALUES (4, 4, 'image/jpeg4', 'daño_caja4.jpg', TO_DATE('2023-10-20','YYYY-MM-DD'));
INSERT INTO FOTO_INCIDENCIAS VALUES (5, 5, 'image/jpeg5', 'daño_caja5.jpg', TO_DATE('2023-10-23','YYYY-MM-DD'));
INSERT INTO FOTO_INCIDENCIAS VALUES (6, 6, 'image/jpeg6', 'daño_caja6.jpg', TO_DATE('2023-10-25','YYYY-MM-DD'));
INSERT INTO FOTO_INCIDENCIAS VALUES (8, 7, 'image/jpeg7', 'daño_caja7.jpg', TO_DATE('2023-10-02','YYYY-MM-DD'));



