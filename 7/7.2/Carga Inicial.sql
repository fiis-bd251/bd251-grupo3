INSERT INTO PRODUCTO (IDPRODUCTO, ESTADO, UBICACION, FECHA_INGRESO, FECHA_ENTREGA_ESTIMADA) VALUES
  ('PR001', 'Disponible', 'Estantería 1', '2024-01-01', '2024-12-31'),
  ('PR002', 'Disponible', 'Estantería 2', '2024-01-01', '2024-12-31'),
  ('PR003', 'Disponible', 'Estantería 3', '2024-01-01', '2024-12-31'),
  ('PR004', 'Disponible', 'Estantería 4', '2024-01-01', '2024-12-31'),
  ('PR005', 'Disponible', 'Estantería 5', '2024-01-01', '2024-12-31'),
  ('PR006', 'Disponible', 'Estantería 6', '2024-01-01', '2024-12-31'),
  ('PR007', 'Disponible', 'Estantería 7', '2024-01-01', '2024-12-31'),
  ('PR008', 'Disponible', 'Estantería 8', '2024-01-01', '2024-12-31'),
  ('PR009', 'Disponible', 'Estantería 9', '2024-01-01', '2024-12-31'),
  ('PR010', 'Disponible', 'Estantería 10', '2024-01-01', '2024-12-31');

INSERT INTO ESTADO_LISTA (IDESTADO, DESCRIPCION) VALUES
  ('ES01', 'Estado 1'),
  ('ES02', 'Estado 2'),
  ('ES03', 'Estado 3'),
  ('ES04', 'Estado 4');

INSERT INTO EMPLEADO (idEmpleado, nombre, apellido_paterno, apellido_materno, telefono, dni, area_trabajo, rol) VALUES
  ('EM001', 'Melissa', 'Evans', 'Walker', '001-843-732-481', '95822412', 'Zona 1', 'Operador'),
  ('EM002', 'Seth', 'Miller', 'Wheeler', '489-020-6364x25', '24942603', 'Zona 2', 'Operador'),
  ('EM003', 'Janice', 'Luna', 'Robinson', '968.304.6791', '13356886', 'Zona 3', 'Operador'),
  ('EM004', 'Lori', 'Cummings', 'Mcintyre', '001-481-958-723', '46913810', 'Zona 4', 'Operador'),
  ('EM005', 'Dawn', 'Diaz', 'Miller', '(841)879-2227', '42868828', 'Zona 5', 'Operador'),
  ('EM006', 'Jacob', 'Smith', 'Hughes', '7964349911', '39958838', 'Zona 6', 'Operador'),
  ('EM007', 'Alison', 'Torres', 'Lopez', '657-884-6332x71', '28728463', 'Zona 7', 'Operador'),
  ('EM008', 'James', 'Figueroa', 'Prince', '001-408-541-236', '23756669', 'Zona 8', 'Operador'),
  ('EM009', 'April', 'Fowler', 'Stewart', '141.413.5981x04', '83197857', 'Zona 9', 'Operador'),
  ('EM010', 'Denise', 'Jackson', 'Johnson', '(929)872-1023', '21668732', 'Zona 10', 'Operador'),
  ('EM011', 'Glenda', 'Butler', 'Williamson', '+1-377-770-9638', '89254563', 'Zona 11', 'Operador'),
  ('EM012', 'Rebecca', 'Oconnor', 'Hancock', '(044)364-6737x1', '66629388', 'Zona 12', 'Operador'),
  ('EM013', 'Madison', 'Walter', 'Robinson', '617-384-9045', '14265799', 'Zona 13', 'Operador'),
  ('EM014', 'Kristin', 'Rodriguez', 'Daniels', '230.187.7611x07', '13999315', 'Zona 14', 'Operador'),
  ('EM015', 'Gina', 'Mcintyre', 'Rivera', '917.185.5996', '22575562', 'Zona 15', 'Operador');

INSERT INTO LOTE (IDLOTE, IDCLIENTE, IDPRODUCTO, ESTADO_LOTE, CANTIDAD_PRODUCTOS, UBICACION_LOTE, FECHA_INGRESO, FECHA_ENTREGA_ESTIMADA) VALUES
  ('LT001', 'CL004', 'PR004', 'En tránsito', 74, 'Estante 1', '2024-02-01', '2024-12-01'),
  ('LT002', 'CL010', 'PR001', 'En tránsito', 81, 'Estante 2', '2024-02-01', '2024-12-01'),
  ('LT003', 'CL004', 'PR009', 'En tránsito', 63, 'Estante 3', '2024-02-01', '2024-12-01'),
  ('LT004', 'CL004', 'PR008', 'En tránsito', 85, 'Estante 4', '2024-02-01', '2024-12-01'),
  ('LT005', 'CL005', 'PR001', 'En tránsito', 30, 'Estante 5', '2024-02-01', '2024-12-01'),
  ('LT006', 'CL007', 'PR006', 'En tránsito', 45, 'Estante 6', '2024-02-01', '2024-12-01'),
  ('LT007', 'CL003', 'PR004', 'En tránsito', 53, 'Estante 7', '2024-02-01', '2024-12-01'),
  ('LT008', 'CL002', 'PR002', 'En tránsito', 58, 'Estante 8', '2024-02-01', '2024-12-01');

INSERT INTO PAQUETE (IDPAQUETE, IDPRODUCTO, ESTADO_PAQUETE, CANTIDAD_PRODUCTO, UBICACION_PAQUETE, PESO_PAQUETE, UNIDAD_DE_PESO, FECHA_CREACION, FECHA_ENTREGA_ESTIMADA) VALUES
  ('PK001', 'PR002', 'Empacado', 27, 'Zona 1', 17.10, 'KG', '2024-03-01', '2024-12-15'),
  ('PK002', 'PR010', 'Empacado', 21, 'Zona 2', 16.34, 'KG', '2024-03-01', '2024-12-15'),
  ('PK003', 'PR008', 'Empacado', 39, 'Zona 3', 3.37, 'KG', '2024-03-01', '2024-12-15'),
  ('PK004', 'PR007', 'Empacado', 10, 'Zona 4', 11.49, 'KG', '2024-03-01', '2024-12-15'),
  ('PK005', 'PR010', 'Empacado', 28, 'Zona 5', 11.97, 'KG', '2024-03-01', '2024-12-15'),
  ('PK006', 'PR002', 'Empacado', 7, 'Zona 6', 13.56, 'KG', '2024-03-01', '2024-12-15'),
  ('PK007', 'PR005', 'Empacado', 10, 'Zona 7', 17.25, 'KG', '2024-03-01', '2024-12-15'),
  ('PK008', 'PR002', 'Empacado', 29, 'Zona 8', 6.28, 'KG', '2024-03-01', '2024-12-15'),
  ('PK009', 'PR006', 'Empacado', 15, 'Zona 9', 8.03, 'KG', '2024-03-01', '2024-12-15'),
  ('PK010', 'PR004', 'Empacado', 47, 'Zona 10', 6.07, 'KG', '2024-03-01', '2024-12-15'),
  ('PK011', 'PR002', 'Empacado', 43, 'Zona 11', 13.06, 'KG', '2024-03-01', '2024-12-15'),
  ('PK012', 'PR009', 'Empacado', 20, 'Zona 12', 4.10, 'KG', '2024-03-01', '2024-12-15');

INSERT INTO LISTA_PICKING (IDPICKING, IDPRODUCTO, IDESTADO, FECHA_CREACION, OBSERVACION) VALUES
  ('LPK001', 'PR007', 'ES03', '2024-04-01 08:00:00', 'Preparación 1'),
  ('LPK002', 'PR009', 'ES02', '2024-04-01 08:00:00', 'Preparación 2'),
  ('LPK003', 'PR006', 'ES01', '2024-04-01 08:00:00', 'Preparación 3'),
  ('LPK004', 'PR004', 'ES01', '2024-04-01 08:00:00', 'Preparación 4'),
  ('LPK005', 'PR006', 'ES04', '2024-04-01 08:00:00', 'Preparación 5'),
  ('LPK006', 'PR005', 'ES01', '2024-04-01 08:00:00', 'Preparación 6');

INSERT INTO LISTA_PACKING (IDPACKING, IDPAQUETE, IDESTADO, FECHA_CREACION, OBSERVACION) VALUES
  ('LPA001', 'PK004', 'ES03', '2024-04-02 10:00:00', 'Empaque 1'),
  ('LPA002', 'PK004', 'ES04', '2024-04-02 10:00:00', 'Empaque 2'),
  ('LPA003', 'PK007', 'ES04', '2024-04-02 10:00:00', 'Empaque 3'),
  ('LPA004', 'PK003', 'ES03', '2024-04-02 10:00:00', 'Empaque 4'),
  ('LPA005', 'PK003', 'ES02', '2024-04-02 10:00:00', 'Empaque 5'),
  ('LPA006', 'PK012', 'ES03', '2024-04-02 10:00:00', 'Empaque 6');

INSERT INTO CONTENEDOR (IDCONTENEDOR, ALTURA, ANCHO, LARGO) VALUES
  ('CO001', 3.99, 1.43, 2.75),
  ('CO002', 2.45, 2.00, 1.41),
  ('CO003', 2.97, 1.76, 3.58),
  ('CO004', 1.61, 1.16, 3.04),
  ('CO005', 3.39, 1.38, 2.79);

INSERT INTO CARGA (IDCARGA, IDPAQUETE, IDCONTENEDOR, PESO_CARGA, UNIDAD_PESO, FECHA_CREACION, CANTIDAD_PAQUETE) VALUES
  ('CG001', 'PK008', 'CO005', 32.63, 'KG', '2024-04-10', 9),
  ('CG002', 'PK001', 'CO001', 71.35, 'KG', '2024-04-10', 9),
  ('CG003', 'PK005', 'CO003', 20.04, 'KG', '2024-04-10', 7),
  ('CG004', 'PK003', 'CO004', 10.29, 'KG', '2024-04-10', 5),
  ('CG005', 'PK009', 'CO002', 55.69, 'KG', '2024-04-10', 2),
  ('CG006', 'PK011', 'CO003', 85.75, 'KG', '2024-04-10', 9),
  ('CG007', 'PK010', 'CO002', 23.76, 'KG', '2024-04-10', 3),
  ('CG008', 'PK009', 'CO005', 92.66, 'KG', '2024-04-10', 10),
  ('CG009', 'PK006', 'CO004', 11.75, 'KG', '2024-04-10', 6),
  ('CG010', 'PK005', 'CO002', 15.21, 'KG', '2024-04-10', 10);

INSERT INTO INVENTARIO (idinventario, nombre_producto, categoria, cantidad, precio_unitario, proveedor, fecha_ingreso) VALUES
  ('IN001', 'Producto 1', 'Categoría 1', 11, 51.97, 'Lowe-Huynh', '2024-04-01'),
  ('IN002', 'Producto 2', 'Categoría 2', 63, 409.85, 'Banks, Lane and Fitzgerald', '2024-04-01'),
  ('IN003', 'Producto 3', 'Categoría 3', 98, 271.03, 'Mendez, Valenzuela and Rivers', '2024-04-01'),
  ('IN004', 'Producto 4', 'Categoría 4', 17, 72.91, 'Smith PLC', '2024-04-01'),
  ('IN005', 'Producto 5', 'Categoría 0', 61, 473.96, 'Hernandez Ltd', '2024-04-01'),
  ('IN006', 'Producto 6', 'Categoría 1', 22, 139.88, 'Mckinney-Brown', '2024-04-01'),
  ('IN007', 'Producto 7', 'Categoría 2', 78, 217.34, 'Chapman-Hernandez', '2024-04-01'),
  ('IN008', 'Producto 8', 'Categoría 3', 28, 465.17, 'Kirby and Sons', '2024-04-01'),
  ('IN009', 'Producto 9', 'Categoría 4', 97, 367.67, 'Thompson Inc', '2024-04-01'),
  ('IN010', 'Producto 10', 'Categoría 0', 26, 359.34, 'Oneill Group', '2024-04-01');

  INSERT INTO MOVIMIENTO (idmovimiento, idinventario, idempleado, tipo_movimiento, cantidad, fecha_movimiento, observaciones) VALUES
  ('MV001', 'IN002', 'EM001', 'Salida', 41, '2025-04-19', 'Registro 1'),
  ('MV002', 'IN003', 'EM002', 'Entrada', 85, '2025-04-06', 'Registro 2'),
  ('MV003', 'IN001', 'EM001', 'Entrada', 37, '2025-04-19', 'Registro 3'),
  ('MV004', 'IN009', 'EM010', 'Entrada', 81, '2025-04-21', 'Registro 4'),
  ('MV005', 'IN009', 'EM007', 'Entrada', 67, '2025-03-27', 'Registro 5'),
  ('MV006', 'IN005', 'EM001', 'Entrada', 99, '2025-04-06', 'Registro 6'),
  ('MV007', 'IN006', 'EM005', 'Entrada', 37, '2025-03-16', 'Registro 7'),
  ('MV008', 'IN006', 'EM002', 'Entrada', 58, '2025-04-27', 'Registro 8'),
  ('MV009', 'IN006', 'EM006', 'Salida', 15, '2025-03-18', 'Registro 9');

INSERT INTO ORDEN_DESPACHO (ID_ORDEN, IDEMPLEADO, IDMOVIMIENTO, FECHA_DESPACHO, ESTADO) VALUES
  ('OD001', 'EM008', 'MV002', '2025-04-25', 'En tránsito'),
  ('OD002', 'EM002', 'MV003', '2025-04-27', 'En tránsito'),
  ('OD003', 'EM002', 'MV004', '2025-04-25', 'En tránsito'),
  ('OD004', 'EM005', 'MV005', '2025-04-24', 'En tránsito'),
  ('OD005', 'EM006', 'MV006', '2025-04-24', 'En tránsito'),
  ('OD006', 'EM004', 'MV007', '2025-05-02', 'En tránsito'),
  ('OD007', 'EM001', 'MV008', '2025-04-30', 'En tránsito'),
  ('OD008', 'EM005', 'MV009', '2025-05-02', 'En tránsito'),
  ('OD009', 'EM004', 'MV001', '2025-05-02', 'En tránsito');

INSERT INTO VEHICULO (IDVEHICULO, TIPO_VEHICULO, ESTADO_VEHICULO, PLACA, MODELO) VALUES
  ('VH001', 'Furgoneta', 'En uso', '783-002', 'Hard'),
  ('VH002', 'Furgoneta', 'En uso', 'ZYW 695', 'Fire'),
  ('VH003', 'Camión', 'En uso', '95Z M18', 'Whose'),
  ('VH004', 'Furgoneta', 'Disponible', '8-43752T', 'Mother'),
  ('VH005', 'Furgoneta', 'Disponible', 'NPH 4285', 'Sister');

INSERT INTO PROVEEDOR (idproveedor, razon_social, ruc, correo, numero_contacto_proveedor) VALUES
  ('PRV001', 'Barrera PLC', '98515543667', 'levyanne@yahoo.com', '11799505137'),
  ('PRV002', 'Fleming-Thomas', '83749478913', 'hsalazar@hobbs.com', '69307074498'),
  ('PRV003', 'Taylor, Coleman and Barnett', '43196346836', 'wholden@hotmail.com', '94239380912'),
  ('PRV004', 'Nguyen Group', '70831350511', 'cheryl36@gmail.com', '14557505881'),
  ('PRV005', 'Obrien, Roberts and Davis', '45989487095', 'brooke00@hotmail.com', '08851490663');

INSERT INTO CLIENTE (idCliente, razon_social, ruc, correo, numero_contacto_cliente) VALUES
  ('CL001', 'Holt LLC', '42456852025', 'stephencampbell@yahoo.com', '69184363056'),
  ('CL002', 'George, Mitchell and Harris', '55890068783', 'akelly@schmidt.com', '09857680320'),
  ('CL003', 'Coffey-Curtis', '17627861561', 'hoffmandiana@alvarez.info', '60279403367'),
  ('CL004', 'Holloway Ltd', '62894468092', 'xmeyer@greene.net', '42304383096'),
  ('CL005', 'Miller PLC', '19739872926', 'wilsoncurtis@gmail.com', '54695842434');

INSERT INTO TIPO_EVENTO (idTipo, descripcion) VALUES
  ('TE01', 'Recepción'),
  ('TE02', 'Despacho');

INSERT INTO CANAL (idCanal, descripcion) VALUES
  ('CA01', 'Email'),
  ('CA02', 'SMS');

INSERT INTO ESTADO_ALERTA (idEstado, descripcion) VALUES
  ('EA01', 'Pendiente'),
  ('EA02', 'Resuelto');

INSERT INTO EVENTO_LOGISTICO (idEvento, idPaquete, idEmpleado, descripcion, fecha, lugar, idTipo) VALUES
  ('EVT001', 'PK004', 'EM010', 'Seguimiento 1', '2024-04-15 09:00:00', 'Almacén 1', 'TE02'),
  ('EVT002', 'PK006', 'EM004', 'Seguimiento 2', '2024-04-15 09:00:00', 'Almacén 2', 'TE01'),
  ('EVT003', 'PK008', 'EM007', 'Seguimiento 3', '2024-04-15 09:00:00', 'Almacén 3', 'TE02'),
  ('EVT004', 'PK008', 'EM003', 'Seguimiento 4', '2024-04-15 09:00:00', 'Almacén 4', 'TE01'),
  ('EVT005', 'PK005', 'EM003', 'Seguimiento 5', '2024-04-15 09:00:00', 'Almacén 5', 'TE02'),
  ('EVT006', 'PK004', 'EM009', 'Seguimiento 6', '2024-04-15 09:00:00', 'Almacén 6', 'TE01'),
  ('EVT007', 'PK009', 'EM005', 'Seguimiento 7', '2024-04-15 09:00:00', 'Almacén 7', 'TE02'),
  ('EVT008', 'PK007', 'EM010', 'Seguimiento 8', '2024-04-15 09:00:00', 'Almacén 8', 'TE01'),
  ('EVT009', 'PK007', 'EM006', 'Seguimiento 9', '2024-04-15 09:00:00', 'Almacén 9', 'TE02');

INSERT INTO NOTIFICACION (idNotificacion, idPaquete, fecha, idCanal, idTipo, contenido) VALUES
  ('NTF001', 'PK004', '2024-04-15 10:00:00', 'CA02', 'TE02', 'Notificación 1'),
  ('NTF002', 'PK003', '2024-04-15 10:00:00', 'CA01', 'TE01', 'Notificación 2'),
  ('NTF003', 'PK009', '2024-04-15 10:00:00', 'CA02', 'TE02', 'Notificación 3'),
  ('NTF004', 'PK008', '2024-04-15 10:00:00', 'CA01', 'TE01', 'Notificación 4'),
  ('NTF005', 'PK002', '2024-04-15 10:00:00', 'CA02', 'TE02', 'Notificación 5'),
  ('NTF006', 'PK001', '2024-04-15 10:00:00', 'CA01', 'TE01', 'Notificación 6'),
  ('NTF007', 'PK002', '2024-04-15 10:00:00', 'CA02', 'TE02', 'Notificación 7'),
  ('NTF008', 'PK003', '2024-04-15 10:00:00', 'CA01', 'TE01', 'Notificación 8'),
  ('NTF009', 'PK003', '2024-04-15 10:00:00', 'CA02', 'TE02', 'Notificación 9');


INSERT INTO ALERTA_RETRASO (idAlerta, idPaquete, fecha, idCanal, idEstado, umbral_horas, fecha_real, fecha_estimada) VALUES
  ('ALR001', 'PK001', '2024-04-15 08:00:00', 'CA02', 'EA01', 5, '2024-04-15 18:00:00', '2024-04-15 14:00:00'),
  ('ALR002', 'PK003', '2024-04-15 08:00:00', 'CA01', 'EA01', 5, '2024-04-15 18:00:00', '2024-04-15 14:00:00'),
  ('ALR003', 'PK005', '2024-04-15 08:00:00', 'CA02', 'EA02', 2, '2024-04-15 18:00:00', '2024-04-15 14:00:00'),
  ('ALR004', 'PK002', '2024-04-15 08:00:00', 'CA01', 'EA02', 6, '2024-04-15 18:00:00', '2024-04-15 14:00:00'),
  ('ALR005', 'PK003', '2024-04-15 08:00:00', 'CA01', 'EA01', 2, '2024-04-15 18:00:00', '2024-04-15 14:00:00');

INSERT INTO ESTADOS_ENTREGA (codigo, descripcion) VALUES
  ('ENTREGADO', 'Producto entregado'),
  ('ENVIADO', 'Producto enviado');

INSERT INTO TIPOS_INCIDENCIA (codigo, descripcion) VALUES
  ('DAÑO', 'Producto dañado'),
  ('RETRASO', 'Retraso en entrega');

INSERT INTO ORDEN_TRANSPORTE (ID_ORDEN_TRANSPORTE, IDEMPLEADO, almacen_destino, almacen_origen, fecha_salida, hora_salida) VALUES
  ('OT001', 'EM004', 'Almacén B', 'Almacén A', '2024-04-10', '2024-04-10 08:00:00'),
  ('OT002', 'EM001', 'Almacén B', 'Almacén A', '2024-04-10', '2024-04-10 08:00:00'),
  ('OT003', 'EM005', 'Almacén B', 'Almacén A', '2024-04-10', '2024-04-10 08:00:00'),
  ('OT004', 'EM004', 'Almacén B', 'Almacén A', '2024-04-10', '2024-04-10 08:00:00'),
  ('OT005', 'EM001', 'Almacén B', 'Almacén A', '2024-04-10', '2024-04-10 08:00:00');

INSERT INTO GUIA_REMISION (idGuiaRemision, ID_ORDEN_TRANSPORTE, idVehiculo, idCliente, ruc_empresa, fecha_emision, fecha_traslado) VALUES
  ('GR001', 'OT001', 'VH001', 'CL001', '52977998447', '2024-04-10', '2024-04-11'),
  ('GR002', 'OT002', 'VH002', 'CL002', '73273626803', '2024-04-10', '2024-04-11'),
  ('GR003', 'OT003', 'VH003', 'CL003', '18778429773', '2024-04-10', '2024-04-11'),
  ('GR004', 'OT004', 'VH004', 'CL004', '30045205805', '2024-04-10', '2024-04-11'),
  ('GR005', 'OT005', 'VH005', 'CL005', '13893851635', '2024-04-10', '2024-04-11');

INSERT INTO INFORME_ENTREGA (ID_INFORME_ENTREGA, ID_ORDEN_TRANSPORTE, fecha_entrega, estado, nombre_receptor) VALUES
  ('IE001', 'OT002', '2024-04-12', 'ENVIADO', 'Daniel Price'),
  ('IE002', 'OT003', '2024-04-12', 'ENTREGADO', 'Beth Ramirez'),
  ('IE003', 'OT004', '2024-04-12', 'ENVIADO', 'Tiffany Hernandez'),
  ('IE004', 'OT005', '2024-04-12', 'ENTREGADO', 'Benjamin Larson'),
  ('IE005', 'OT001', '2024-04-12', 'ENVIADO', 'Alexander Green');

INSERT INTO INCIDENCIAS (ID_INCIDENCIAS, ID_ORDEN_TRANSPORTE, idGuiaRemision, tipo, descripcion, fecha_registro) VALUES
  ('IN001', 'OT001', 'GR001', 'DAÑO', 'Se reportó una incidencia 0', '2024-04-11'),
  ('IN002', 'OT002', 'GR002', 'RETRASO', 'Se reportó una incidencia 1', '2024-04-11'),
  ('IN003', 'OT003', 'GR003', 'DAÑO', 'Se reportó una incidencia 2', '2024-04-11'),
  ('IN004', 'OT004', 'GR004', 'RETRASO', 'Se reportó una incidencia 3', '2024-04-11'),
  ('IN005', 'OT005', 'GR005', 'DAÑO', 'Se reportó una incidencia 4', '2024-04-11');

INSERT INTO FOTO_INCIDENCIAS (ID_FOTO_INCIDENCIAS, ID_INCIDENCIAS, tipo_mime, nombre_archivo, fecha_captura) VALUES
  ('FI001', 'IN001', 'image/jpeg', 'foto1.jpg', '2024-04-11'),
  ('FI002', 'IN002', 'image/jpeg', 'foto2.jpg', '2024-04-11'),
  ('FI003', 'IN003', 'image/jpeg', 'foto3.jpg', '2024-04-11'),
  ('FI004', 'IN004', 'image/jpeg', 'foto4.jpg', '2024-04-11'),
  ('FI005', 'IN005', 'image/jpeg', 'foto5.jpg', '2024-04-11');


INSERT INTO CRITICIDAD (Id_criticidad, Nivel) VALUES
  ('CR001', 'Nivel 1'),
  ('CR002', 'Nivel 2'),
  ('CR003', 'Nivel 3'),
  ('CR004', 'Nivel 4'),
  ('CR005', 'Nivel 5');

INSERT INTO CATEGORIA_ALMACEN (Id_categoria, Nombre_categoria) VALUES
  ('CA001', 'Categoría 1'),
  ('CA002', 'Categoría 2'),
  ('CA003', 'Categoría 3'),
  ('CA004', 'Categoría 4'),
  ('CA005', 'Categoría 5');

INSERT INTO ESTADO_ALMACEN (Id_estado, Nombre_estado) VALUES
  ('EA001', 'Estado 1'),
  ('EA002', 'Estado 2'),
  ('EA003', 'Estado 3'),
  ('EA004', 'Estado 4'),
  ('EA005', 'Estado 5');

INSERT INTO ALMACEN (Id_almacen, Direccion, Capacidad, Idempleado, Id_estado, Id_categoria) VALUES
  ('AL001', '1727 Carlson Extension, North Brian, PA 36788', 4181, 'EM008', 'EA004', 'CA004'),
  ('AL002', '529 Michelle Isle, East Christophertown, MD 02693', 830, 'EM010', 'EA005', 'CA001'),
  ('AL003', '176 Larry Pass Apt. 572, West Sarah, OH 37354', 3174, 'EM008', 'EA001', 'CA001'),
  ('AL004', '13108 Ruiz Rapid Apt. 080, South Nicholasshire, UT 57244', 4420, 'EM008', 'EA001', 'CA003'),
  ('AL005', 'PSC 7822, Box 6962, APO AE 31235', 1741, 'EM003', 'EA002', 'CA002'),
  ('AL006', '065 Norris Harbors, Richardburgh, VT 70746', 3698, 'EM009', 'EA005', 'CA005'),
  ('AL007', '560 Jeffrey Port Apt. 477, Jessicabury, FL 41830', 4413, 'EM006', 'EA001', 'CA005'),
  ('AL008', '079 Gutierrez Greens, Johnstad, AZ 25880', 4867, 'EM001', 'EA003', 'CA003'),
  ('AL009', '3597 Jeffrey Plains Apt. 668, South Michael, FL 31861', 3928, 'EM004', 'EA003', 'CA002'),
  ('AL010', 'Unit 3832 Box 4547, DPO AP 58419', 2381, 'EM008', 'EA002', 'CA003'),
  ('AL011', '1309 Anderson Bridge Suite 171, Elizabethville, TX 18639', 3099, 'EM001', 'EA003', 'CA003'),
  ('AL012', '506 Jessica Shores Apt. 414, Lake Tanyastad, TN 49625', 1871, 'EM010', 'EA004', 'CA001'),
  ('AL013', '825 White Islands, East Tinahaven, CA 57970', 3742, 'EM008', 'EA005', 'CA005'),
  ('AL014', '47330 Bird River Apt. 333, Millerton, AZ 32785', 4287, 'EM001', 'EA004', 'CA002'),
  ('AL015', '73575 Wright Well Apt. 272, East Jody, NH 96616', 4210, 'EM009', 'EA001', 'CA002');

INSERT INTO PLAN_MANTENIMIENTO (Id_plan, Descripcion, Fecha_plan, Idempleado, Id_criticidad) VALUES
  ('PM001', 'Plan de mantenimiento 1', '2024-05-08', 'EM008', 'CR002'),
  ('PM002', 'Plan de mantenimiento 2', '2024-05-09', 'EM010', 'CR005'),
  ('PM003', 'Plan de mantenimiento 3', '2024-05-25', 'EM003', 'CR005'),
  ('PM004', 'Plan de mantenimiento 4', '2024-05-25', 'EM006', 'CR002'),
  ('PM005', 'Plan de mantenimiento 5', '2024-05-18', 'EM003', 'CR002'),
  ('PM006', 'Plan de mantenimiento 6', '2024-05-09', 'EM010', 'CR003'),
  ('PM007', 'Plan de mantenimiento 7', '2024-05-15', 'EM009', 'CR002'),
  ('PM008', 'Plan de mantenimiento 8', '2024-05-01', 'EM001', 'CR001'),
  ('PM009', 'Plan de mantenimiento 9', '2024-05-01', 'EM005', 'CR003'),
  ('PM010', 'Plan de mantenimiento 10', '2024-05-06', 'EM004', 'CR003'),
  ('PM011', 'Plan de mantenimiento 11', '2024-05-12', 'EM002', 'CR001'),
  ('PM012', 'Plan de mantenimiento 12', '2024-05-16', 'EM007', 'CR002'),
  ('PM013', 'Plan de mantenimiento 13', '2024-05-09', 'EM004', 'CR003'),
  ('PM014', 'Plan de mantenimiento 14', '2024-05-03', 'EM001', 'CR001'),
  ('PM015', 'Plan de mantenimiento 15', '2024-05-14', 'EM007', 'CR004');

INSERT INTO TIPO_EQUIPO_SOPORTE (Id_tipo, Nombre_tipo) VALUES
  ('TES001', 'Tipo equipo 1'),
  ('TES002', 'Tipo equipo 2'),
  ('TES003', 'Tipo equipo 3'),
  ('TES004', 'Tipo equipo 4'),
  ('TES005', 'Tipo equipo 5');

INSERT INTO DISPONIBILIDAD_EQUIPO_SOPORTE (Id_disponibilidad, Nombre_disponibilidad) VALUES
  ('DES001', 'Disponible 1'),
  ('DES002', 'Disponible 2'),
  ('DES003', 'Disponible 3'),
  ('DES004', 'Disponible 4'),
  ('DES005', 'Disponible 5');

INSERT INTO ESTADO_EQUIPO_SOPORTE (Id_estado, Nombre_estado) VALUES
  ('EES001', 'Estado equipo 1'),
  ('EES002', 'Estado equipo 2'),
  ('EES003', 'Estado equipo 3'),
  ('EES004', 'Estado equipo 4'),
  ('EES005', 'Estado equipo 5');

INSERT INTO EQUIPO_SOPORTE (Id_equipo_soporte, Nombre_equipo_soporte, Id_estado, Id_disponibilidad, Id_tipo, Horas_Uso, Id_almacen, Descripcion) VALUES
  ('ES001', 'Equipo ES001', 'EES001', 'DES001', 'TES001', 292, 'AL013', 'Uso intensivo'),
  ('ES002', 'Equipo ES002', 'EES001', 'DES002', 'TES003', 273, 'AL003', 'Uso intensivo'),
  ('ES003', 'Equipo ES003', 'EES004', 'DES001', 'TES005', 457, 'AL009', 'Uso intensivo'),
  ('ES004', 'Equipo ES004', 'EES003', 'DES004', 'TES003', 421, 'AL002', 'Uso intensivo'),
  ('ES005', 'Equipo ES005', 'EES002', 'DES005', 'TES005', 458, 'AL009', 'Uso intensivo'),
  ('ES006', 'Equipo ES006', 'EES003', 'DES001', 'TES005', 412, 'AL014', 'Uso intensivo'),
  ('ES007', 'Equipo ES007', 'EES005', 'DES004', 'TES001', 305, 'AL010', 'Uso intensivo'),
  ('ES008', 'Equipo ES008', 'EES002', 'DES001', 'TES004', 207, 'AL007', 'Uso intensivo'),
  ('ES009', 'Equipo ES009', 'EES002', 'DES002', 'TES004', 148, 'AL001', 'Uso intensivo'),
  ('ES010', 'Equipo ES010', 'EES004', 'DES004', 'TES005', 129, 'AL014', 'Uso intensivo'),
  ('ES011', 'Equipo ES011', 'EES002', 'DES004', 'TES004', 201, 'AL009', 'Uso intensivo'),
  ('ES012', 'Equipo ES012', 'EES001', 'DES004', 'TES003', 69, 'AL002', 'Uso intensivo'),
  ('ES013', 'Equipo ES013', 'EES005', 'DES001', 'TES002', 165, 'AL013', 'Uso intensivo'),
  ('ES014', 'Equipo ES014', 'EES004', 'DES003', 'TES004', 78, 'AL014', 'Uso intensivo'),
  ('ES015', 'Equipo ES015', 'EES001', 'DES003', 'TES002', 441, 'AL011', 'Uso intensivo'),
  ('ES016', 'Equipo ES016', 'EES001', 'DES002', 'TES001', 205, 'AL011', 'Uso intensivo'),
  ('ES017', 'Equipo ES017', 'EES002', 'DES002', 'TES005', 69, 'AL002', 'Uso intensivo'),
  ('ES018', 'Equipo ES018', 'EES001', 'DES004', 'TES001', 421, 'AL003', 'Uso intensivo'),
  ('ES019', 'Equipo ES019', 'EES004', 'DES005', 'TES001', 100, 'AL004', 'Uso intensivo'),
  ('ES020', 'Equipo ES020', 'EES002', 'DES005', 'TES004', 67, 'AL015', 'Uso intensivo');

INSERT INTO TIPO_MAQUINARIA (id_tipo_maquina, nombre_tipo) VALUES
  ('TMQ001', 'Maquinaria Tipo 1'),
  ('TMQ002', 'Maquinaria Tipo 2'),
  ('TMQ003', 'Maquinaria Tipo 3'),
  ('TMQ004', 'Maquinaria Tipo 4'),
  ('TMQ005', 'Maquinaria Tipo 5');

INSERT INTO ESTADO_MAQUINARIA (id_estado_maquina, nombre_estado) VALUES
  ('EMQ001', 'Estado Máquina 1'),
  ('EMQ002', 'Estado Máquina 2'),
  ('EMQ003', 'Estado Máquina 3'),
  ('EMQ004', 'Estado Máquina 4'),
  ('EMQ005', 'Estado Máquina 5');

INSERT INTO MARCA_MAQUINARIA (id_marca_maquina, nombre_marca) VALUES
  ('MMQ001', 'Marca 1'),
  ('MMQ002', 'Marca 2'),
  ('MMQ003', 'Marca 3'),
  ('MMQ004', 'Marca 4'),
  ('MMQ005', 'Marca 5');

INSERT INTO TIPO_MANTENIMIENTO (id_tipo_mant, nombre_tipo_mant) VALUES
  ('TPM001', 'Tipo mantenimiento 1'),
  ('TPM002', 'Tipo mantenimiento 2'),
  ('TPM003', 'Tipo mantenimiento 3'),
  ('TPM004', 'Tipo mantenimiento 4'),
  ('TPM005', 'Tipo mantenimiento 5');

INSERT INTO ESTADO_MANTENIMIENTO (id_estado, estado) VALUES
  ('ESM001', 'Estado 1'),
  ('ESM002', 'Estado 2'),
  ('ESM003', 'Estado 3');

INSERT INTO MAQUINA (id_maquina, Fecha_ultima_inspeccion, Fecha_adquisicion, id_tipo_maquina, id_estado_maquina, id_marca_maquina) VALUES
  ('MQ001', '2024-04-01', '2020-01-15', 'TMQ004', 'EMQ001', 'MMQ004'),
  ('MQ002', '2024-04-01', '2020-01-15', 'TMQ002', 'EMQ004', 'MMQ005'),
  ('MQ003', '2024-04-01', '2020-01-15', 'TMQ003', 'EMQ005', 'MMQ003'),
  ('MQ004', '2024-04-01', '2020-01-15', 'TMQ005', 'EMQ005', 'MMQ002'),
  ('MQ005', '2024-04-01', '2020-01-15', 'TMQ005', 'EMQ003', 'MMQ003'),
  ('MQ006', '2024-04-01', '2020-01-15', 'TMQ003', 'EMQ003', 'MMQ003'),
  ('MQ007', '2024-04-01', '2020-01-15', 'TMQ003', 'EMQ002', 'MMQ003'),
  ('MQ008', '2024-04-01', '2020-01-15', 'TMQ005', 'EMQ002', 'MMQ004'),
  ('MQ009', '2024-04-01', '2020-01-15', 'TMQ004', 'EMQ005', 'MMQ002'),
  ('MQ010', '2024-04-01', '2020-01-15', 'TMQ003', 'EMQ005', 'MMQ002');

INSERT INTO MANTENIMIENTO (Id_Act_mantto, Fecha_inicio_programado, Fecha_fin_programado, Id_Orden, Id_plan, id_tipo_mant, Id_maquina, id_estado) VALUES
  ('MT001', '2024-05-01', '2024-05-03', 'OD007', 'PM002', 'TPM005', 'MQ009', 'ESM003'),
  ('MT002', '2024-05-02', '2024-05-04', 'OD008', 'PM002', 'TPM002', 'MQ008', 'ESM002'),
  ('MT003', '2024-05-03', '2024-05-05', 'OD004', 'PM015', 'TPM002', 'MQ004', 'ESM001'),
  ('MT004', '2024-05-04', '2024-05-06', 'OD006', 'PM014', 'TPM005', 'MQ002', 'ESM002'),
  ('MT005', '2024-05-05', '2024-05-07', 'OD009', 'PM014', 'TPM001', 'MQ008', 'ESM002'),
  ('MT006', '2024-05-06', '2024-05-08', 'OD002', 'PM009', 'TPM001', 'MQ005', 'ESM002'),
  ('MT007', '2024-05-07', '2024-05-09', 'OD002', 'PM012', 'TPM003', 'MQ009', 'ESM001'),
  ('MT008', '2024-05-08', '2024-05-10', 'OD004', 'PM008', 'TPM001', 'MQ006', 'ESM001'),
  ('MT009', '2024-05-09', '2024-05-11', 'OD009', 'PM015', 'TPM001', 'MQ007', 'ESM003'),
  ('MT010', '2024-05-10', '2024-05-12', 'OD002', 'PM008', 'TPM005', 'MQ004', 'ESM003');

INSERT INTO REGISTRO (Id_registro, Fecha_registro, Idempleado, Id_Act_mantto, Calificacion, Observaciones) VALUES
  ('RG001', '2024-05-26', 'EM003', 'MT008', 1, 'Observación 1'),
  ('RG002', '2024-05-23', 'EM009', 'MT010', 5, 'Observación 2'),
  ('RG003', '2024-05-13', 'EM007', 'MT001', 5, 'Observación 3'),
  ('RG004', '2024-05-25', 'EM007', 'MT001', 4, 'Observación 4'),
  ('RG005', '2024-05-27', 'EM003', 'MT005', 2, 'Observación 5'),
  ('RG006', '2024-05-27', 'EM007', 'MT008', 3, 'Observación 6'),
  ('RG007', '2024-05-03', 'EM005', 'MT009', 2, 'Observación 7'),
  ('RG008', '2024-05-07', 'EM001', 'MT010', 2, 'Observación 8'),
  ('RG009', '2024-05-26', 'EM002', 'MT008', 2, 'Observación 9'),
  ('RG010', '2024-05-07', 'EM001', 'MT001', 4, 'Observación 10'),
  ('RG011', '2024-05-24', 'EM002', 'MT010', 1, 'Observación 11'),
  ('RG012', '2024-05-23', 'EM008', 'MT006', 3, 'Observación 12'),
  ('RG013', '2024-05-04', 'EM007', 'MT010', 3, 'Observación 13'),
  ('RG014', '2024-05-02', 'EM005', 'MT008', 4, 'Observación 14'),
  ('RG015', '2024-05-19', 'EM003', 'MT006', 3, 'Observación 15');

INSERT INTO UBICACION_ALMACEN (idubicacion, idempleado, idproducto, pasillo, estante, nivel) VALUES
  ('UB001', 'EM007', 'PR001', 'P2', 'E4', 'N2'),
  ('UB002', 'EM002', 'PR002', 'P3', 'E10', 'N2'),
  ('UB003', 'EM009', 'PR003', 'P3', 'E3', 'N3'),
  ('UB004', 'EM005', 'PR004', 'P5', 'E2', 'N1'),
  ('UB005', 'EM006', 'PR005', 'P3', 'E7', 'N2'),
  ('UB006', 'EM003', 'PR006', 'P4', 'E2', 'N2'),
  ('UB007', 'EM002', 'PR007', 'P1', 'E4', 'N1'),
  ('UB008', 'EM010', 'PR008', 'P1', 'E6', 'N1'),
  ('UB009', 'EM006', 'PR009', 'P2', 'E1', 'N3'),
  ('UB010', 'EM006', 'PR010', 'P1', 'E7', 'N1');

