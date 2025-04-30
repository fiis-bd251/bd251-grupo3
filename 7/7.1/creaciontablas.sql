BEGIN
   FOR t IN (SELECT table_name FROM user_tables) LOOP
      EXECUTE IMMEDIATE 'DROP TABLE "' || t.table_name || '" CASCADE CONSTRAINTS';
   END LOOP;
END;

DROP TABLE TRANSPORTISTA ;
DROP TABLE INCIDENCIAS;
DROP TABLE FOTO_INCIDENCIAS;
DROP TABLE INCIDENCIAS;
DROP TABLE INFORME_ENTREGA;
DROP TABLE Registro;
DROP TABLE Mantenimiento;
DROP TABLE Estado_mantto;
DROP TABLE Tipo_mantenimiento;
DROP TABLE Maquina;
DROP TABLE Marca_maquina;
DROP TABLE Estado_maquina;
DROP TABLE Tipo_maquina;
DROP TABLE Equipo_de_Soporte;
DROP TABLE Estado_Equipo_Soporte;
DROP TABLE Disponibilidad_Equipo_Soporte;
DROP TABLE Tipo_Equipo_Soporte;
DROP TABLE Plan_de_mantenimiento;
DROP TABLE Criticidad;
DROP TABLE Almacen;
DROP TABLE Estado_Almacen;
DROP TABLE Categoria_Almacen;
DROP TABLE Proveedor ;
DROP TABLE ALERTA_RETRASO;
DROP TABLE NOTIFICACION;
DROP TABLE EVENTO_LOGISTICO;
DROP TABLE Orden_despacho ;
DROP TABLE Movimiento ;
DROP TABLE Ubicacion_almacen ;
DROP TABLE Inventario ;
DROP TABLE LOTE ;
DROP TABLE PAQUETE;
DROP TABLE PRODUCTO;
DROP TABLE GUIA_REMISION;
DROP TABLE EMPLEADO;
DROP TABLE ORDEN_TRANSPORTE ;
DROP TABLE CLIENTE ;
DROP TABLE VEHICULO;

CREATE TABLE ORDEN_TRANSPORTE (
    idOrdenTransporte   NUMBER PRIMARY KEY,
    almacen_destino VARCHAR(60),
    almacen_origen  VARCHAR(60),
    fecha_salida    DATE,
    fecha_registro  DATE,
    hora_llegada    VARCHAR(20),
    hora_salida    VARCHAR(20)
);


CREATE TABLE VEHICULO (
    idVehiculo CHAR(10) PRIMARY KEY,
    tipo_vehiculo VARCHAR(64),
    estado_vehiculo VARCHAR(64),
    placa VARCHAR(15),
    modelo VARCHAR(64)
);

CREATE TABLE GUIA_REMISION (
    idGuiaRemision  NUMBER PRIMARY KEY,
    idOrdenTransporte   NUMBER,
    FOREIGN KEY (idOrdenTransporte) REFERENCES ORDEN_TRANSPORTE(idOrdenTransporte),
    idVehiculo  CHAR(10),
    idCliente   CHAR(10),
    ruc_empresa VARCHAR(120),
    fecha_emision DATE,
    fecha_traslado  DATE
);

CREATE TABLE CLIENTE (
    idCliente   NUMBER PRIMARY KEY,
    nombre  VARCHAR(60),
    telefono    VARCHAR(15),
    email   VARCHAR(60),
    apellido_paterno    VARCHAR(60),
    apellido_materno    VARCHAR(60),
    direcion    VARCHAR(250)
);



CREATE TABLE LOTE (
    idLote  NUMBER PRIMARY KEY,
    idCliente NUMBER,
    FOREIGN KEY (idCliente) REFERENCES CLIENTE(idCliente),
    idPaquete NUMBER,
    FOREIGN KEY (idPaquete) REFERENCES PAQUETE(idPaquete),
    estado_lote VARCHAR(128),
    cantidad_paquete    INT,
    ubicacion_lote  VARCHAR(60),
    fecha_creacion DATE
);

CREATE TABLE PAQUETE (
    idPaquete   NUMBER PRIMARY KEY,
    idProdcuto NUMBER,
    FOREIGN KEY (idProdcuto) REFERENCES PRODUCTO(idProdcuto),
    estado_paquete  VARCHAR(128),
    cantidad_producto  INT,
    ubicacion_paquete   VARCHAR(60),
    fecha_creacion TIMESTAMP
);


CREATE TABLE PRODUCTO(
    idProdcuto NUMBER PRIMARY KEY,
    estado VARCHAR(128),
    ubicacion VARCHAR(60),
    Descripcion VARCHAR(250),
    Empresa VARCHAR(100),
    fecha_ingeso DATE,
    fecha_picking TIMESTAMP
);

CREATE TABLE Inventario (
    idInventario NUMBER PRIMARY KEY,
    idProdcuto NUMBER,
    stock_disponible NUMBER(10,2),
    stock_reservado NUMBER(10,2),
    stock_comprometido NUMBER(10,2),
    FOREIGN KEY (idProdcuto) REFERENCES Producto(idProdcuto)
);

CREATE TABLE EMPLEADO(
    idEmpleado NUMBER PRIMARY KEY,
    nombre VARCHAR(64),
    apellido_paterno VARCHAR(64),
    apellido_materno VARCHAR(64),
    telefono VARCHAR(15),
    dni CHAR(8),
    area_trabajo   VARCHAR(64),
    rol VARCHAR(64)
);


CREATE TABLE Ubicacion_almacen (
    id_ubicacion NUMBER PRIMARY KEY,
    idLote NUMBER,
    idEmpleado NUMBER,
    capacidad_maxima NUMBER(10,2),
    ubicacion VARCHAR2(100),
    FOREIGN KEY (idLote) REFERENCES Lote(idLote),
    FOREIGN KEY (idEmpleado) REFERENCES EMPLEADO(idEmpleado)
);

CREATE TABLE Movimiento (
    idMovimiento NUMBER PRIMARY KEY,
    idInventario NUMBER,
    idEmpleado NUMBER,
    cantidad NUMBER(10,2),
    referencia_documento VARCHAR2(100),
    tipo_movimiento VARCHAR2(50),
    fecha_movimiento DATE,
    FOREIGN KEY (idInventario) REFERENCES Inventario(idInventario),
    FOREIGN KEY (idEmpleado) REFERENCES EMPLEADO(idEmpleado)
);

CREATE TABLE Orden_despacho (
    idOrden NUMBER PRIMARY KEY,
    idMovimiento NUMBER,
    cliente VARCHAR2(100),
    estado VARCHAR2(50),
    fecha_despacho DATE,
    FOREIGN KEY (idMovimiento) REFERENCES Movimiento(idMovimiento)
);


CREATE TABLE EVENTO_LOGISTICO(
    idEvento NUMBER PRIMARY KEY,
    idPaquete NUMBER,
    idEmpleado NUMBER,
    descripcion VARCHAR(255),
    fecha TIMESTAMP,
    lugar VARCHAR(128),
    tipo VARCHAR(64),
    CONSTRAINT fk_empleado FOREIGN KEY (idEmpleado) REFERENCES EMPLEADO(idEmpleado),
    CONSTRAINT fk_paquete FOREIGN KEY (idPaquete) REFERENCES PAQUETE(idPaquete)
);

CREATE TABLE NOTIFICACION(
    idNotificacion NUMBER PRIMARY KEY,
    idPaquete NUMBER,
    fecha TIMESTAMP,
    canal VARCHAR(64),
    tipo VARCHAR(64),
    contenido VARCHAR(500),
    CONSTRAINT fk_paquete_notificacion FOREIGN KEY (idPaquete) REFERENCES PAQUETE(idPaquete)
);

CREATE TABLE ALERTA_RETRASO(
    idAlerta NUMBER PRIMARY KEY,
    idPaquete NUMBER,
    fecha TIMESTAMP,
    canal VARCHAR(64),
    estado VARCHAR(64),
    umbral_horas INT,
    fecha_real TIMESTAMP,
    fecha_estimada TIMESTAMP,
    CONSTRAINT fk_paquete_alerta FOREIGN KEY (idPaquete) REFERENCES PAQUETE(idPaquete)
);


CREATE TABLE Proveedor (
  ID_PROVEEDOR NUMBER PRIMARY KEY,
  RAZON_SOCIAL VARCHAR2(100) NOT NULL,
  RUC VARCHAR2(11) NOT NULL,
  CORREO VARCHAR2(50) NOT NULL,
  NUMERO_CONTACTO_PROVEEDOR VARCHAR2(11)
);

CREATE TABLE Categoria_Almacen
(
  idCategoria NUMBER NOT NULL,
  Nombre_categoria VARCHAR(50) NOT NULL,
  PRIMARY KEY (idCategoria)
);

CREATE TABLE Estado_Almacen
(
  Id_estado NUMBER NOT NULL,
  Nombre_estado VARCHAR(50) NOT NULL,
  PRIMARY KEY (Id_estado)
);

CREATE TABLE Almacen
(
  Id_almacen NUMBER NOT NULL,
  Direccion VARCHAR(255) NOT NULL,
  Capacidad INT NOT NULL,
  Id_empleado NUMBER NOT NULL,
  Id_estado NUMBER NOT NULL,
  Id_categoria NUMBER NOT NULL,
  PRIMARY KEY (Id_almacen),
  FOREIGN KEY (Id_empleado) REFERENCES Empleado(IdEmpleado),
  FOREIGN KEY (Id_estado) REFERENCES Estado_Almacen(Id_estado),
  FOREIGN KEY (Id_categoria) REFERENCES Categoria_Almacen(idCategoria)
);

CREATE TABLE Criticidad
(
  Id_criticidad NUMBER NOT NULL,
  Nivel VARCHAR(50) NOT NULL,
  PRIMARY KEY (Id_criticidad)
);

CREATE TABLE Plan_de_mantenimiento
(
  Id_plan NUMBER NOT NULL,
  Descripcion VARCHAR(255) NOT NULL,
  Fecha_plan DATE NOT NULL,
  Empleado_asigna INT NOT NULL,
  Id_criticidad NUMBER NOT NULL,
  PRIMARY KEY (Id_plan),
  FOREIGN KEY (Empleado_asigna) REFERENCES Empleado(IdEmpleado),
  FOREIGN KEY (Id_criticidad) REFERENCES Criticidad(Id_criticidad)
);

CREATE TABLE Tipo_Equipo_Soporte
(
  Id_tipo NUMBER NOT NULL,
  Nombre_tipo VARCHAR(100) NOT NULL,
  PRIMARY KEY (Id_tipo)
);

CREATE TABLE Disponibilidad_Equipo_Soporte
(
  Id_disponibilidad NUMBER NOT NULL,
  Nombre_disponibilidad VARCHAR(100) NOT NULL,
  PRIMARY KEY (Id_disponibilidad)
);

CREATE TABLE Estado_Equipo_Soporte
(
  Id_estado NUMBER NOT NULL,
  Nombre_estado VARCHAR(100) NOT NULL,
  PRIMARY KEY (Id_estado)
);

CREATE TABLE Equipo_de_Soporte
(
  Id_equipo_soporte NUMBER NOT NULL,
  Nombre_equipo_soporte VARCHAR(100) NOT NULL,
  Id_estado NUMBER NOT NULL,
  Id_disponibilidad NUMBER NOT NULL,
  Id_tipo NUMBER NOT NULL,
  Horas_Uso INT NOT NULL,
  Id_almacen NUMBER NOT NULL,
  Descripcion VARCHAR(255) NOT NULL,
  PRIMARY KEY (Id_equipo_soporte),
  FOREIGN KEY (Id_estado) REFERENCES Estado_Equipo_Soporte(Id_estado),
  FOREIGN KEY (Id_disponibilidad) REFERENCES Disponibilidad_Equipo_Soporte(Id_disponibilidad),
  FOREIGN KEY (Id_tipo) REFERENCES Tipo_Equipo_Soporte(Id_tipo),
  FOREIGN KEY (Id_almacen) REFERENCES Almacen(Id_almacen)
);

CREATE TABLE Tipo_maquina
(
    id_tipo_maquina NUMBER NOT NULL,
    nombre_tipo VARCHAR(300),
    PRIMARY KEY (id_tipo_maquina)
);

CREATE TABLE Estado_maquina
(
    id_estado_maquina NUMBER NOT NULL,
    nombre_estado VARCHAR(300),
    PRIMARY KEY (id_estado_maquina)
);

CREATE TABLE Marca_maquina
(
    id_marca_maquina NUMBER NOT NULL,
    nombre_marca VARCHAR(100) NOT NULL,
	PRIMARY KEY (id_marca_maquina)
);

CREATE TABLE Maquina
(
    id_maquina NUMBER NOT NULL,
    Fecha_ultima_inspeccion DATE NOT NULL,
    Fecha_adquisicion DATE NOT NULL,
    id_tipo_maquina NUMBER NOT NULL,
    id_estado_maquina NUMBER NOT NULL,
    id_marca_maquina NUMBER NOT NULL,
    PRIMARY KEY (Id_maquina),
    FOREIGN KEY (id_marca_maquina) REFERENCES Marca_maquina(id_marca_maquina),
    FOREIGN KEY (id_tipo_maquina) REFERENCES Tipo_maquina(id_tipo_maquina),
    FOREIGN KEY (id_estado_maquina) REFERENCES Estado_maquina(id_estado_maquina)
);

CREATE TABLE Tipo_mantenimiento
(
  id_tipo_mant NUMBER NOT NULL,
  nombre_tipo_mant VARCHAR(30) NOT NULL,
  PRIMARY KEY (id_tipo_mant)
);

CREATE TABLE Estado_mantto
(
  id_estado NUMBER NOT NULL,
  estado VARCHAR(20) NOT NULL,
  PRIMARY KEY (id_estado)
);

CREATE TABLE Mantenimiento
(
  Id_Act_mantto NUMBER NOT NULL,
  Fecha_inicio_programado DATE NOT NULL,
  Fecha_fin_programado DATE NOT NULL,
  Id_Orden NUMBER,
  Id_plan NUMBER NOT NULL,
  id_tipo_mant NUMBER NOT NULL,
  Id_maquina NUMBER NOT NULL,
  id_estado NUMBER NOT NULL,
  PRIMARY KEY (Id_Act_mantto),
  FOREIGN KEY (Id_plan) REFERENCES Plan_de_mantenimiento(Id_plan) ON DELETE CASCADE,
  FOREIGN KEY (id_tipo_mant) REFERENCES Tipo_mantenimiento(id_tipo_mant),
  FOREIGN KEY (id_maquina) REFERENCES Maquina(Id_maquina),
  FOREIGN KEY (id_estado) REFERENCES Estado_mantto(id_estado)
);

CREATE TABLE Registro
(
  Id_registro NUMBER NOT NULL,
  Fecha_registro DATE NOT NULL,
  IdEmpleado NUMBER NOT NULL,
  Id_Act_mantto NUMBER NOT NULL,
  Calificacion INT NOT NULL,
  Observaciones VARCHAR(255),
  PRIMARY KEY (Id_registro),
  FOREIGN KEY (IdEmpleado) REFERENCES Empleado(IdEmpleado),
  FOREIGN KEY (Id_Act_mantto) REFERENCES Mantenimiento(Id_Act_mantto)
);

CREATE TABLE INFORME_ENTREGA(
    ID_INFORME_ENTREGA NUMBER(8)NOT NULL,
    IDORDENTRANSPORTE NUMBER(8) NOT NULL,
    fecha_entrega DATE,
    estado VARCHAR2(20),
    nombre_receptor VARCHAR2(100),
    PRIMARY KEY(ID_INFORME_ENTREGA),
    FOREIGN KEY (IDORDENTRANSPORTE)
        REFERENCES ORDEN_TRANSPORTE(IDORDENTRANSPORTE)
);


CREATE TABLE INCIDENCIAS(
    ID_INCIDENCIAS NUMBER(8)NOT NULL,
    IDORDENTRANSPORTE NUMBER(8) NOT NULL,
    ID_INFORME_ENTREGA NUMBER(8) NOT NULL,
    tipo VARCHAR2(20),
    descripcion VARCHAR2(200),
    fecha_registro DATE,
    PRIMARY KEY(ID_INCIDENCIAS),
    FOREIGN KEY (IDORDENTRANSPORTE)
        REFERENCES ORDEN_TRANSPORTE(IDORDENTRANSPORTE),
    FOREIGN KEY (ID_INFORME_ENTREGA)
        REFERENCES INFORME_ENTREGA(ID_INFORME_ENTREGA)
);


CREATE TABLE FOTO_INCIDENCIAS(
    ID_FOTO_INCIDENCIAS NUMBER(8)NOT NULL,
    ID_INCIDENCIAS NUMBER(8) NOT NULL,
    tipo_mime VARCHAR2(20),
    fecha_captura DATE,
    PRIMARY KEY(ID_FOTO_INCIDENCIAS),
    FOREIGN KEY (ID_INCIDENCIAS)
        REFERENCES INCIDENCIAS(ID_INCIDENCIAS)
);




CREATE TABLE TRANSPORTISTA (
    idEmpleado NUMBER,
    FOREIGN KEY (idEmpleado) REFERENCES EMPLEADO(idEmpleado)
);