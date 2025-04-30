-- PRODUCTO
INSERT INTO Producto (id_producto, nombre, unidad_medida, descripcion, tipo_producto) VALUES
(1, 'Laptop Dell', 'Unidad', 'Laptop de oficina', 'Electrónico'),
(2, 'Mouse Logitech', 'Unidad', 'Mouse inalámbrico', 'Accesorio'),
(3, 'Teclado HP', 'Unidad', 'Teclado mecánico', 'Accesorio'),

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
(4, 4, 40, 2, 1);

-- UBICACION_ALMACEN
INSERT INTO Ubicacion_almacen (id_ubicacion, id_lote, id_usuario, capacidad_maxima, ubicacion) VALUES
(1, 1, 1, 1000, 'Pasillo A1'),
(2, 2, 2, 800, 'Pasillo A2'),
(3, 3, 3, 1200, 'Pasillo B1'),
(4, 4, 4, 500, 'Pasillo B2');


-- MOVIMIENTO
INSERT INTO Movimiento (id_movimiento, id_inventario, id_usuario, cantidad, referencia_documento, tipo_movimiento, fecha_movimiento) VALUES
(1, 1, 1, 10, 'ORD001', 'Entrada', TO_DATE('2025-04-01', 'YYYY-MM-DD')),
(2, 2, 2, 5, 'ORD002', 'Salida', TO_DATE('2025-04-02', 'YYYY-MM-DD')),
(3, 3, 3, 8, 'ORD003', 'Entrada', TO_DATE('2025-04-03', 'YYYY-MM-DD')),
(4, 4, 4, 2, 'ORD004', 'Salida', TO_DATE('2025-04-04', 'YYYY-MM-DD')),


-- ORDEN_DESPACHO
INSERT INTO Orden_despacho (id_orden, id_movimiento, cliente, estado, fecha_despacho) VALUES
(1, 2, 'Empresa A', 'Despachado', TO_DATE('2025-04-02', 'YYYY-MM-DD')),
(2, 4, 'Empresa B', 'Pendiente', TO_DATE('2025-04-04', 'YYYY-MM-DD')),
(3, 6, 'Empresa C', 'Despachado', TO_DATE('2025-04-06', 'YYYY-MM-DD')),
(4, 8, 'Empresa D', 'En proceso', TO_DATE('2025-04-08', 'YYYY-MM-DD')),



-- PRODUCTO
INSERT INTO Producto (id_producto, nombre, unidad_medida, descripcion, tipo_producto) VALUES
(1, 'Laptop Dell', 'Unidad', 'Laptop de oficina', 'Electrónico'),
(2, 'Mouse Logitech', 'Unidad', 'Mouse inalámbrico', 'Accesorio'),
(3, 'Teclado HP', 'Unidad', 'Teclado mecánico', 'Accesorio'),
(4, 'Monitor Samsung', 'Unidad', 'Monitor 24 pulgadas', 'Electrónico'),
(5, 'Silla Ergonómica', 'Unidad', 'Silla para oficina', 'Mobiliario'),



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


INSERT INTO EVENTO_LOGISTICO (idEvento, idPaquete, idEmpleado, descripcion, fecha, lugar, tipo)
VALUES
(20000001, 101, 10000001, 'Paquete cargado para despacho inicial', TO_TIMESTAMP('2025-04-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Avenida El Sol 123, frente a Terminal Sur', 'Carga'),
(20000002, 102, 10000002, 'Inicio de traslado a punto intermedio', TO_TIMESTAMP('2025-04-01 09:10:00', 'YYYY-MM-DD HH24:MI:SS'), 'Avenida Tupac Amaru 456, cruce con Av. Perú', 'Transporte'),
(20000003, 103, 10000003, 'Recepción en centro logístico secundario', TO_TIMESTAMP('2025-04-01 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Avenida Colonial 2200, Callao', 'Recepción'),
(20000004, 104, 10000004, 'Verificación por supervisor logístico', TO_TIMESTAMP('2025-04-01 11:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Avenida La Marina 900, frente a Hiraoka', 'Inspección'),
(20000005, 105, 10000005, 'Paquete en ruta a cliente final', TO_TIMESTAMP('2025-04-01 12:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Avenida Arequipa 1300, a una cuadra de Parque Kennedy', 'Transporte'),
(20000006, 106, 10000006, 'Entrega exitosa registrada', TO_TIMESTAMP('2025-04-01 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Jr. Cusco 145, Cercado de Lima', 'Entrega'),
(20000007, 107, 10000007, 'Revisión por jefe de almacén', TO_TIMESTAMP('2025-04-01 15:10:00', 'YYYY-MM-DD HH24:MI:SS'), 'Avenida Argentina 1800, zona industrial', 'Inspección'),

INSERT INTO NOTIFICACION (idNotificacion, idPaquete, fecha, canal, tipo, contenido)
VALUES
(30000001, 101, TO_TIMESTAMP('2025-04-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'SMS', 'Actualización', 'Su paquete ha sido cargado en el almacén principal y está en camino.'),
(30000002, 102, TO_TIMESTAMP('2025-04-02 09:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo Electrónico', 'Actualización', 'El paquete está en tránsito hacia su destino final.'),
(30000003, 103, TO_TIMESTAMP('2025-04-03 10:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'APP Móvil', 'Transporte', 'Su paquete ha sido transportado hacia el centro de distribución del sur.'),
(30000004, 104, TO_TIMESTAMP('2025-04-04 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'SMS', 'Inspección', 'El paquete está siendo inspeccionado en el almacén.'),
(30000005, 105, TO_TIMESTAMP('2025-04-05 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo Electrónico', 'Entrega', 'Su paquete está en proceso de entrega al cliente final.'),
(30000006, 106, TO_TIMESTAMP('2025-04-06 13:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'APP Móvil', 'Entrega', 'El paquete ha llegado a su destino y está listo para ser entregado.'),
(30000007, 107, TO_TIMESTAMP('2025-04-07 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'SMS', 'Transferencia', 'El paquete ha sido transferido hacia otra provincia.'),



INSERT INTO ALERTA_RETRASO (idAlerta, idPaquete, fecha, canal, estado, umbral_horas, fecha_real, fecha_estimada)
VALUES
(40000001, 101, TO_TIMESTAMP('2025-04-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo', 'En proceso', 2, TO_TIMESTAMP('2025-04-01 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-04-01 13:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000002, 102, TO_TIMESTAMP('2025-04-02 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'SMS', 'Resuelto', 3, TO_TIMESTAMP('2025-04-02 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-04-02 12:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000003, 103, TO_TIMESTAMP('2025-04-03 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo', 'Pendiente', 4, TO_TIMESTAMP('2025-04-03 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-04-03 14:30:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000004, 104, TO_TIMESTAMP('2025-04-04 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Aplicación', 'Resuelto', 1, TO_TIMESTAMP('2025-04-04 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-04-04 09:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000005, 105, TO_TIMESTAMP('2025-04-05 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo', 'En proceso', 6, TO_TIMESTAMP('2025-04-05 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-04-05 19:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000006, 106, TO_TIMESTAMP('2025-04-06 07:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'SMS', 'Pendiente', 2, TO_TIMESTAMP('2025-04-06 07:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-04-06 09:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000007, 107, TO_TIMESTAMP('2025-04-07 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo', 'Resuelto', 3, TO_TIMESTAMP('2025-04-07 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-04-07 17:00:00', 'YYYY-MM-DD HH24:MI:SS')),


INSERT INTO EMPLEADO (idEmpleado, nombre, apellido_paterno, apellido_materno, telefono, dni, area_trabajo, rol)
VALUES
(10000001, 'Juan', 'Pérez', 'Gómez', '123456789', '12345678', 'Despacho', 'Operativo de Despacho'),
(10000002, 'María', 'Rodríguez', 'López', '987654321', '23456789', 'Seguimiento del Paquete', 'Supervisor de Seguimiento'),
(10000003, 'Carlos', 'García', 'Martínez', '456123789', '34567890', 'Cargamento', 'Cargamento de Transporte'),
(10000004, 'Ana', 'Sánchez', 'Ramírez', '321654987', '45678901', 'Control de Equipos y Mantenimiento', 'Técnico de Mantenimiento'),
(10000005, 'Pedro', 'Torres', 'Hernández', '987654123', '56789012', 'Gestión de Inventario', 'Jefe de Inventarios'),
(10000006, 'Luis', 'Martínez', 'Fernández', '987654321', '67890123', 'Despacho', 'Operativo de Despacho'),
(10000007, 'Sofía', 'Pérez', 'González', '123456789', '78901234', 'Seguimiento del Paquete', 'Asistente de Seguimiento'),



INSERT INTO EVENTO_LOGISTICO (idEvento, idPaquete, idEmpleado, descripcion, fecha, lugar, tipo)
VALUES
(20000001, 101, 10000001, 'Paquete cargado para despacho inicial', TO_TIMESTAMP('2025-04-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Avenida El Sol 123, frente a Terminal Sur', 'Carga'),
(20000002, 102, 10000002, 'Inicio de traslado a punto intermedio', TO_TIMESTAMP('2025-04-01 09:10:00', 'YYYY-MM-DD HH24:MI:SS'), 'Avenida Tupac Amaru 456, cruce con Av. Perú', 'Transporte'),
(20000003, 103, 10000003, 'Recepción en centro logístico secundario', TO_TIMESTAMP('2025-04-01 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Avenida Colonial 2200, Callao', 'Recepción'),
(20000004, 104, 10000004, 'Verificación por supervisor logístico', TO_TIMESTAMP('2025-04-01 11:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Avenida La Marina 900, frente a Hiraoka', 'Inspección'),
(20000005, 105, 10000005, 'Paquete en ruta a cliente final', TO_TIMESTAMP('2025-04-01 12:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Avenida Arequipa 1300, a una cuadra de Parque Kennedy', 'Transporte'),
(20000006, 106, 10000006, 'Entrega exitosa registrada', TO_TIMESTAMP('2025-04-01 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Jr. Cusco 145, Cercado de Lima', 'Entrega'),



INSERT INTO NOTIFICACION (idNotificacion, idPaquete, fecha, canal, tipo, contenido)
VALUES
(30000001, 101, TO_TIMESTAMP('2025-04-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'SMS', 'Actualización', 'Su paquete ha sido cargado en el almacén principal y está en camino.'),
(30000002, 102, TO_TIMESTAMP('2025-04-02 09:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo Electrónico', 'Actualización', 'El paquete está en tránsito hacia su destino final.'),
(30000003, 103, TO_TIMESTAMP('2025-04-03 10:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'APP Móvil', 'Transporte', 'Su paquete ha sido transportado hacia el centro de distribución del sur.'),
(30000004, 104, TO_TIMESTAMP('2025-04-04 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'SMS', 'Inspección', 'El paquete está siendo inspeccionado en el almacén.'),
(30000005, 105, TO_TIMESTAMP('2025-04-05 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo Electrónico', 'Entrega', 'Su paquete está en proceso de entrega al cliente final.'),
(30000006, 106, TO_TIMESTAMP('2025-04-06 13:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'APP Móvil', 'Entrega', 'El paquete ha llegado a su destino y está listo para ser entregado.'),


INSERT INTO ALERTA_RETRASO (idAlerta, idPaquete, fecha, canal, estado, umbral_horas, fecha_real, fecha_estimada)
VALUES
(40000001, 101, TO_TIMESTAMP('2025-04-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo', 'En proceso', 2, TO_TIMESTAMP('2025-04-01 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-04-01 13:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000002, 102, TO_TIMESTAMP('2025-04-02 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'SMS', 'Resuelto', 3, TO_TIMESTAMP('2025-04-02 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-04-02 12:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000003, 103, TO_TIMESTAMP('2025-04-03 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo', 'Pendiente', 4, TO_TIMESTAMP('2025-04-03 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-04-03 14:30:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000004, 104, TO_TIMESTAMP('2025-04-04 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Aplicación', 'Resuelto', 1, TO_TIMESTAMP('2025-04-04 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-04-04 09:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000005, 105, TO_TIMESTAMP('2025-04-05 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo', 'En proceso', 6, TO_TIMESTAMP('2025-04-05 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-04-05 19:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000006, 106, TO_TIMESTAMP('2025-04-06 07:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'SMS', 'Pendiente', 2, TO_TIMESTAMP('2025-04-06 07:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-04-06 09:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(40000007, 107, TO_TIMESTAMP('2025-04-07 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Correo', 'Resuelto', 3, TO_TIMESTAMP('2025-04-07 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-04-07 17:00:00', 'YYYY-MM-DD HH24:MI:SS')),

INSERT INTO CLIENTE (idCliente, nombre, telefono, email, apellido_paterno, apellido_materno, direccion) VALUES (1, 'Nombre1', '991629106', 'cliente1@correo.com', 'Paterno1', 'Materno1', 'Calle 1 Ciudad');
INSERT INTO CLIENTE (idCliente, nombre, telefono, email, apellido_paterno, apellido_materno, direccion) VALUES (2, 'Nombre2', '912054155', 'cliente2@correo.com', 'Paterno2', 'Materno2', 'Calle 2 Ciudad');
INSERT INTO CLIENTE (idCliente, nombre, telefono, email, apellido_paterno, apellido_materno, direccion) VALUES (3, 'Nombre3', '920596431', 'cliente3@correo.com', 'Paterno3', 'Materno3', 'Calle 3 Ciudad');
INSERT INTO CLIENTE (idCliente, nombre, telefono, email, apellido_paterno, apellido_materno, direccion) VALUES (4, 'Nombre4', '927480333', 'cliente4@correo.com', 'Paterno4', 'Materno4', 'Calle 4 Ciudad');
INSERT INTO CLIENTE (idCliente, nombre, telefono, email, apellido_paterno, apellido_materno, direccion) VALUES (5, 'Nombre5', '940232466', 'cliente5@correo.com', 'Paterno5', 'Materno5', 'Calle 5 Ciudad');
INSERT INTO CLIENTE (idCliente, nombre, telefono, email, apellido_paterno, apellido_materno, direccion) VALUES (6, 'Nombre6', '972021470', 'cliente6@correo.com', 'Paterno6', 'Materno6', 'Calle 6 Ciudad');
INSERT INTO CLIENTE (idCliente, nombre, telefono, email, apellido_paterno, apellido_materno, direccion) VALUES (7, 'Nombre7', '996685584', 'cliente7@correo.com', 'Paterno7', 'Materno7', 'Calle 7 Ciudad');

INSERT INTO PRODUCTO (idProdcuto, estado, ubicacion, Descripcion, fecha_ingeso, fecha_picking) VALUES (1, 'Reservado', 'Almacen 5', 'Producto de tipo A con características especiales.', TO_DATE('2025-01-29', 'YYYY-MM-DD'), TO_DATE('2025-04-14 00:00:00', 'YYYY-MM-DD'));
INSERT INTO PRODUCTO (idProdcuto, estado, ubicacion, Descripcion, fecha_ingeso, fecha_picking) VALUES (2, 'En tránsito', 'Almacen 5', 'Producto de tipo C con características especiales.', TO_DATE('2025-03-05', 'YYYY-MM-DD'), TO_DATE('2025-04-01 00:00:00', 'YYYY-MM-DD'));
INSERT INTO PRODUCTO (idProdcuto, estado, ubicacion, Descripcion, fecha_ingeso, fecha_picking) VALUES (3, 'En tránsito', 'Almacen 2', 'Producto de tipo A con características especiales.', TO_DATE('2025-04-20', 'YYYY-MM-DD'), TO_DATE('2025-03-23 00:00:00', 'YYYY-MM-DD'));
INSERT INTO PRODUCTO (idProdcuto, estado, ubicacion, Descripcion, fecha_ingeso, fecha_picking) VALUES (4, 'Reservado', 'Almacen 2', 'Producto de tipo C con características especiales.', TO_DATE('2025-01-29', 'YYYY-MM-DD'), TO_DATE('2025-04-11 00:00:00', 'YYYY-MM-DD'));
INSERT INTO PRODUCTO (idProdcuto, estado, ubicacion, Descripcion, fecha_ingeso, fecha_picking) VALUES (5, 'Reservado', 'Almacen 4', 'Producto de tipo B con características especiales.', TO_DATE('2025-02-14', 'YYYY-MM-DD'), TO_DATE('2025-04-22 00:00:00', 'YYYY-MM-DD'));
INSERT INTO PRODUCTO (idProdcuto, estado, ubicacion, Descripcion, fecha_ingeso, fecha_picking) VALUES (6, 'Disponible', 'Almacen 1', 'Producto de tipo A con características especiales.', TO_DATE('2025-01-04', 'YYYY-MM-DD'), TO_DATE('2025-02-25 00:00:00', 'YYYY-MM-DD'));
INSERT INTO PRODUCTO (idProdcuto, estado, ubicacion, Descripcion, fecha_ingeso, fecha_picking) VALUES (7, 'Reservado', 'Almacen 2', 'Producto de tipo C con características especiales.', TO_DATE('2025-03-22', 'YYYY-MM-DD'), TO_DATE('2025-04-17 00:00:00', 'YYYY-MM-DD'));
INSERT INTO PRODUCTO (idProdcuto, estado, ubicacion, Descripcion, fecha_ingeso, fecha_picking) VALUES (8, 'Disponible', 'Almacen 2', 'Producto de tipo C con características especiales.', TO_DATE('2025-01-09', 'YYYY-MM-DD'), TO_DATE('2025-04-20 00:00:00', 'YYYY-MM-DD'));
INSERT INTO PRODUCTO (idProdcuto, estado, ubicacion, Descripcion, fecha_ingeso, fecha_picking) VALUES (9, 'Disponible', 'Almacen 5', 'Producto de tipo B con características especiales.', TO_DATE('2025-04-16', 'YYYY-MM-DD'), TO_DATE('2025-03-07 00:00:00', 'YYYY-MM-DD'));


INSERT INTO PAQUETE (idPaquete, idProdcuto, estado_paquete, cantidad_producto, ubicacion_paquete, fecha_creacion) VALUES (1, 1, 'Pendiente', 46, 'Sección X', TO_DATE('2025-04-25 00:00:00', 'YYYY-MM-DD'));
INSERT INTO PAQUETE (idPaquete, idProdcuto, estado_paquete, cantidad_producto, ubicacion_paquete, fecha_creacion) VALUES (2, 2, 'Pendiente', 59, 'Sección Y', TO_DATE('2025-01-28 00:00:00', 'YYYY-MM-DD'));
INSERT INTO PAQUETE (idPaquete, idProdcuto, estado_paquete, cantidad_producto, ubicacion_paquete, fecha_creacion) VALUES (3, 3, 'Empacado', 17, 'Sección Y', TO_DATE('2025-02-16 00:00:00', 'YYYY-MM-DD'));
INSERT INTO PAQUETE (idPaquete, idProdcuto, estado_paquete, cantidad_producto, ubicacion_paquete, fecha_creacion) VALUES (4, 4, 'Enviado', 45, 'Sección Z', TO_DATE('2025-04-24 00:00:00', 'YYYY-MM-DD'));
INSERT INTO PAQUETE (idPaquete, idProdcuto, estado_paquete, cantidad_producto, ubicacion_paquete, fecha_creacion) VALUES (5, 5, 'Pendiente', 57, 'Sección Z', TO_DATE('2025-02-10 00:00:00', 'YYYY-MM-DD'));
INSERT INTO PAQUETE (idPaquete, idProdcuto, estado_paquete, cantidad_producto, ubicacion_paquete, fecha_creacion) VALUES (6, 6, 'Enviado', 77, 'Sección Y', TO_DATE('2025-02-06 00:00:00', 'YYYY-MM-DD'));
INSERT INTO PAQUETE (idPaquete, idProdcuto, estado_paquete, cantidad_producto, ubicacion_paquete, fecha_creacion) VALUES (7, 7, 'Pendiente', 67, 'Sección Y', TO_DATE('2025-04-17 00:00:00', 'YYYY-MM-DD'));


INSERT INTO LOTE (idLote, idCliente, idPaquete, estado_lote, cantidad_paquete, ubicacion_lote, fecha_creacion) VALUES (1, 1, 1, 'En espera', 4, 'Zona Oeste', TO_DATE('2025-04-04', 'YYYY-MM-DD'));
INSERT INTO LOTE (idLote, idCliente, idPaquete, estado_lote, cantidad_paquete, ubicacion_lote, fecha_creacion) VALUES (2, 2, 2, 'Cerrado', 5, 'Zona Sur', TO_DATE('2025-03-20', 'YYYY-MM-DD'));
INSERT INTO LOTE (idLote, idCliente, idPaquete, estado_lote, cantidad_paquete, ubicacion_lote, fecha_creacion) VALUES (3, 3, 3, 'En espera', 2, 'Zona Norte', TO_DATE('2025-04-27', 'YYYY-MM-DD'));
INSERT INTO LOTE (idLote, idCliente, idPaquete, estado_lote, cantidad_paquete, ubicacion_lote, fecha_creacion) VALUES (4, 4, 4, 'Activo', 8, 'Zona Norte', TO_DATE('2025-02-01', 'YYYY-MM-DD'));
INSERT INTO LOTE (idLote, idCliente, idPaquete, estado_lote, cantidad_paquete, ubicacion_lote, fecha_creacion) VALUES (5, 5, 5, 'Activo', 10, 'Zona Este', TO_DATE('2025-02-13', 'YYYY-MM-DD'));
INSERT INTO LOTE (idLote, idCliente, idPaquete, estado_lote, cantidad_paquete, ubicacion_lote, fecha_creacion) VALUES (6, 6, 6, 'En espera', 2, 'Zona Norte', TO_DATE('2025-03-02', 'YYYY-MM-DD'));
INSERT INTO LOTE (idLote, idCliente, idPaquete, estado_lote, cantidad_paquete, ubicacion_lote, fecha_creacion) VALUES (7, 7, 7, 'Cerrado', 5, 'Zona Oeste', TO_DATE('2025-02-05', 'YYYY-MM-DD'));


INSERT INTO GUIA_REMISION (idGuiaRemision, idOrdenTransporte, idVehiculo, idCliente, ruc_empresa, fecha_emision, fecha_traslado) VALUES (1, 1001, 'VH00000001', '0000000001', '2087259265', TO_DATE('2025-04-05', 'YYYY-MM-DD'), TO_DATE('2025-01-07', 'YYYY-MM-DD'));
INSERT INTO GUIA_REMISION (idGuiaRemision, idOrdenTransporte, idVehiculo, idCliente, ruc_empresa, fecha_emision, fecha_traslado) VALUES (2, 1002, 'VH00000002', '0000000002', '2039798165', TO_DATE('2025-01-08', 'YYYY-MM-DD'), TO_DATE('2025-01-31', 'YYYY-MM-DD'));
INSERT INTO GUIA_REMISION (idGuiaRemision, idOrdenTransporte, idVehiculo, idCliente, ruc_empresa, fecha_emision, fecha_traslado) VALUES (3, 1003, 'VH00000003', '0000000003', '2072624209', TO_DATE('2025-03-12', 'YYYY-MM-DD'), TO_DATE('2025-02-04', 'YYYY-MM-DD'));
INSERT INTO GUIA_REMISION (idGuiaRemision, idOrdenTransporte, idVehiculo, idCliente, ruc_empresa, fecha_emision, fecha_traslado) VALUES (4, 1004, 'VH00000004', '0000000004', '2050174838', TO_DATE('2025-01-10', 'YYYY-MM-DD'), TO_DATE('2025-04-24', 'YYYY-MM-DD'));
INSERT INTO GUIA_REMISION (idGuiaRemision, idOrdenTransporte, idVehiculo, idCliente, ruc_empresa, fecha_emision, fecha_traslado) VALUES (5, 1005, 'VH00000005', '0000000005', '2067913063', TO_DATE('2025-01-05', 'YYYY-MM-DD'), TO_DATE('2025-02-09', 'YYYY-MM-DD'));
INSERT INTO GUIA_REMISION (idGuiaRemision, idOrdenTransporte, idVehiculo, idCliente, ruc_empresa, fecha_emision, fecha_traslado) VALUES (6, 1006, 'VH00000006', '0000000006', '2075853680', TO_DATE('2025-04-28', 'YYYY-MM-DD'), TO_DATE('2025-03-25', 'YYYY-MM-DD'));

INSERT INTO PROVEEDOR (idProveedor, razon_social, ruc, correo, numero_contacto_proveedor)
VALUES
(12345670, 'Inversiones Globales S.A.C.', '20481234567', 'contacto@inversionesglobales.com', '987654321'),
(12345671, 'Distribuciones Andinas EIRL', '20123456789', 'ventas@andinas.com.pe', '912345678'),
(12345672, 'TecnoSoluciones S.R.L.', '20567891234', 'soporte@tecnosoluciones.pe', '900112233'),
(12345673, 'Logística Express S.A.', '20654321987', 'logistica@expresssa.com', '998877665'),
(12345674, 'Importaciones del Sur SAC', '20345678901', 'info@importsur.com', '955667788'),
(12345675, 'Grupo Empresarial Nova', '20369403523', 'contacto6@empresa6.com', '933120792'),
(12345676, 'Comercial J&L', '20054851095', 'contacto7@empresa7.com', '995542852'),


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

INSERT INTO PAQUETE (idPaquete, estado_paquete, ubicacion, fecha_ingreso, fecha_estimada_entrega, id_lote)
VALUES
(20000001, 'Por verificar', 'Almacén_1', TO_DATE('2025-04-20', 'YYYY-MM-DD'), TO_DATE('2025-04-22', 'YYYY-MM-DD'), 10000001),
(20000002, 'Verificado', 'Almacén_2', TO_DATE('2025-04-21', 'YYYY-MM-DD'), TO_DATE('2025-04-23', 'YYYY-MM-DD'), 10000002),
(20000003, 'Por verificar', 'Almacén_3', TO_DATE('2025-04-22', 'YYYY-MM-DD'), TO_DATE('2025-04-24', 'YYYY-MM-DD'), 10000002),
(20000004, 'Por verificar', 'Almacén_3', TO_DATE('2025-04-22', 'YYYY-MM-DD'), TO_DATE('2025-04-24', 'YYYY-MM-DD'), 10000003),
(20000005, 'Verificado', 'Almacén_4', TO_DATE('2025-04-23', 'YYYY-MM-DD'), TO_DATE('2025-04-25', 'YYYY-MM-DD'), 10000003),
(20000006, 'Por verificar', 'Almacén_5', TO_DATE('2025-04-24', 'YYYY-MM-DD'), TO_DATE('2025-04-26', 'YYYY-MM-DD'), 10000003),
(20000007, 'Verificado', 'Almacén_4', TO_DATE('2025-04-23', 'YYYY-MM-DD'), TO_DATE('2025-04-25', 'YYYY-MM-DD'), 10000004),


INSERT INTO PRODUCTO (idProducto, nombre_producto, estado_producto, descripcion, id_paquete)
VALUES
(30000001, 'Laptop', 'Producto dañado', 'Portátil de alto rendimiento con pantalla de 15 pulgadas.', 20000001),
(30000002, 'Smartphone', 'Producto sin daños', 'Teléfono inteligente con la pantalla rota.', 20000002),
(30000003, 'Televisor 4K', 'Producto dañado', 'Smart TV de 55 pulgadas con resolución Ultra HD.', 20000003),
(30000004, 'Refrigerador', 'Producto sin daños', 'Nevera con un golpe en la puerta.', 20000004),
(30000005, 'Auriculares Bluetooth', 'Producto dañado', 'Cascos inalámbricos con un auricular que no funciona.', 20000005),
(30000006, 'Tablet', 'Producto sin daños', 'Tablet ligera con pantalla de 10 pulgadas.', 20000006),
(30000007, 'Cámara', 'Producto dañado', 'Cámara réflex con lente de 18-55mm.', 20000007),


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

INSERT INTO Maquinas_Mantenimiento (Tipo_Maquina, Estado_Maquina, Marca_Maquina, Tipo_Mantenimiento, Estado_Mantenimiento)
VALUES
('Elevador tijera', 'Fuera de servicio', 'Volvo', 'Correctivo', 'Rechazado');
('Elevador tijera', 'Fuera de servicio', 'JLG', 'Predictivo', 'Rechazado');
('Apilador de contenedores', 'Operativa', 'JLG', 'Predictivo', 'Rechazado');
('Montacarga eléctrico', 'Mantenimiento', 'Volvo', 'Preventivo', 'Pendiente');
('Montacarga eléctrico', 'Fuera de servicio', 'Caterpellir (CAT)', 'Predictivo', 'Rechazado');
('Montacarga eléctrico', 'Operativa', 'John Deere', 'Predictivo', 'Pendiente');


INSERT INTO Registro (Fecha_registro, Id_empleado, Id_act_mantto, Calificacion, Observaciones)
VALUES ('2025-04-23', 5, 10, 5, 'Cambio de filtro');
('2025-04-10', 2, 6, 3, 'Reemplazo de batería');
('2025-04-12', 6, 1, 2, 'Revisión de frenos');
('2025-04-02', 5, 3, 4, 'Cambio de filtro');
('2025-04-17', 4, 1, 3, 'Reemplazo de batería');
('2025-04-04', 4, 7, 3, 'Cambio de filtro');
('2025-04-11', 3, 9, 2, 'Ajuste de motor');
('2025-04-06', 1, 1, 3, 'Prueba de funcionamiento');










