## SCRIPT SQL

### 1. Tabla: Evento_Logistico
CREATE TABLE Evento_Logistico (

    id_evento SERIAL PRIMARY KEY,

    descripcion VARCHAR(255) NOT NULL,
    
    fecha DATE NOT NULL,
    
    lugar VARCHAR(128),
    
    tipo VARCHAR(64),
    
    id_paquete INT REFERENCES Paquete(id_paquete)

);

### 2. Tabla: Notificacion
CREATE TABLE Notificacion (
    
    id_notificacion SERIAL PRIMARY KEY,
    
    fecha DATE NOT NULL,
    
    hora TIME NOT NULL,
    
    canal VARCHAR(64),
    
    tipo VARCHAR(64),
    
    contenido VARCHAR(500),
    
    id_paquete INT REFERENCES Paquete(id_paquete)

);

### 3. Tabla: Paquete
CREATE TABLE Paquete (
    
    id_paquete SERIAL PRIMARY KEY,
    
    estado VARCHAR(64),
    
    ubicacion VARCHAR(128),
    
    fecha_entrega_estimada DATE,
    
    fecha_ingreso DATE,
    
    id_cliente INT REFERENCES Cliente(id_cliente)

);

### 4. Tabla: Alerta_Retraso
CREATE TABLE Alerta_Retraso (
    
    id_alerta SERIAL PRIMARY KEY,
    
    canal VARCHAR(64),
    
    umbral_horas INT,
    
    fecha DATE,
    
    estado VARCHAR(64),
    
    fecha_real DATE,
    
    fecha_estimada DATE,
    
    id_paquete INT REFERENCES Paquete(id_paquete)

);

### 5. Tabla: Empleado
CREATE TABLE Empleado (
    
    id_empleado SERIAL PRIMARY KEY,
    
    nombre VARCHAR(64),
    
    telefono VARCHAR(9)),
    
    dni CHAR(8),
    
    apellido_paterno VARCHAR(64),
    
    apellido_materno VARCHAR(64),
    
    area VARCHAR(64),
    
    rol VARCHAR(64)

);


### 6. Tabla: Cliente
CREATE TABLE Cliente (

    id_cliente SERIAL PRIMARY KEY,
    
    telefono VARCHAR(9),
    
    nombre VARCHAR(64),
    
    email VARCHAR(100),
    
    direccion VARCHAR(255),
    
    apellido_paterno VARCHAR(64),
    
    apellido_materno VARCHAR(64)

);
