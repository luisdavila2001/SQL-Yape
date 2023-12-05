drop database if exists Yape;
create database Yape;
use Yape;

create table Usuario(
id int auto_increment primary key,
Nombre char(30) not null,
Apellido char(30) not null,
NumeroCel char(9) unique,
DNI char (8) unique,
Contrasaña char(16) unique,
Saldo DECIMAL(18,2),
Codigo char(8) unique,
 create_at datetime null,
 update_at datetime not null);
 

create table Sector (
id int auto_increment primary key,
Detalle char(50) unique);

create table Tipo (
id int auto_increment primary key,
Tipo char (20) unique);

create table Empresa(
id int auto_increment primary key,
RazonSocial char(50) not null,
Codigo char(8),
idSector int references Sector);

create table Producto (
id int auto_increment primary key,
idTipo int references Tipo,
idEmpresa int references Empresa,
Titulo char(80) not null,
Precio decimal(18,2),
Detalle char (255) not null,
Validez char (40),
Stock char (20),
create_at datetime null,
update_at datetime not null);
 

/*inserts*/
insert Sector(Detalle) values ('Agua'), ('ComprasInternet'), ('Educacion'), ('Bancos'), ('Gas'), ('Luz'), ('Negocios'), ('Seguros'), ('Telefonia'), ('Catalogo'), ('Comida'), ('Cine'), ('Diversion'),
					('Tecnologia'), ('Futbol'), ('Bebidas'), ('Transporte'), ('Deportes'), ('Moda'), ('Regalos'), ('Belleza'), ('Conciertos'), ('Teatro'), ('Entretenimiento'), ('Fiesta'),('Gaming');

insert Empresa values /*--Agua--*/
					('NULL','Emapa Cop S.A.','01234567',1),('NULL','Empa Cañete','NULL',1),('NULL','Eps Grau','NULL',1),('NULL','Eps Ilo S.A.','NULL',1),('NULL','Epsel','NULL',1),('NULL','Seda Ayacucho','NULL',1),('NULL','Sedalib','NULL',1),
					('NULL','Sedapal','76543210',1),('NULL','Sedapar S.A','NULL',1),
					/*compras por internet*/
					('NULL','Kashio','NULL',2),('NULL','Monnet','NULL',2),('NULL','Paycash','NULL',2),('NULL','Pay Valida','NULL',2),('NULL','Tienda Pago','NULL',2),
					/*Educacion*/
					('NULL','Autonoma del Peru','NULL',3),('NULL','Certus','NULL',3),('NULL','Cient. del Sur','NULL',3),('NULL','Gef Sponsor','NULL',3),('NULL','Icpna','52893143',3),('NULL','Inst. Carrion','NULL',3),('NULL','Senati','92792013',3),('NULL','Univ. Cesar Vallejo','NULL',3),
					('NULL','U. Priv. del Norte','NULL',3),('NULL','U. S. de Sipan','NULL',3),('NULL','U. San Juan Bautista','NULL',3),('NULL','Univ. Esan','NULL',3),('NULL','Univ. Upch','NULL',3),('NULL','Univ. Wiener','NULL',3),('NULL','Unsa','NULL',3),('NULL','Upao','NULL',3),('NULL','Usil','43574181',3),('NULL','Joinnus','NULL',3),
					/*--Bancos---*/
					('NULL','Caja Arequipa','NULL',4),('NULL','Caja del Santa','NULL',4),('NULL','Caja los Andes','NULL',4),('NULL','Cajda de Paita','NULL',4),('NULL','Caja Sullana','NULL',4),('NULL','Caja Tacna','NULL',4),('NULL','Caja Trujillo','NULL',4),
					('NULL','Coopa Isabel','NULL',4),('NULL','Credinka','23184356',4),('NULL','Mibanco','27595690',4),('NULL','Payjoy','NULL',4),('NULL','Surgir','NULL',4),
					/*--Gas--*/
					('NULL','Contugas','NULL',5),('NULL','Calidda','68241972',5),('NULL','Llamgas','NULL',5),('NULL','PetroPeru','NULL',5),('NULL','Quavii-Dgp','NULL',5),('NULL','Quavii-Piura','NULL',5),('NULL','Primax','NULL',5),
					/*--Luz--*/
					('NULL','Adinesa','NULL',6),('NULL','Electro Oriente','NULL',6),('NULL','Electro Sur Este','NULL',6),('NULL','Electro Ucayali','NULL',6),('NULL','Electrocentro','NULL',6),('NULL','Electrodunas','NULL',6),('NULL','Electro norte','NULL',6),
					('NULL','Electro sur','NULL',6),('NULL','Enel','NULL',6),('NULL','Enosa','NULL',6),('NULL','Hidrandina','NULL',6),('NULL','Luz del Sur','NULL',6),('NULL','Seal','NULL',6),
					/*---negocios*----*/
					('NULL','Backus','NULL',7),('NULL','Cbc Market','NULL',7),('NULL','Costeño','NULL',7),('NULL','Diadia','NULL',7),('NULL','Gw Yichang','NULL',7),('NULL','Insuma','NULL',7),('NULL','San Juan','NULL',7),
					/*---Seguros--*/
					('NULL','La Positiva','NULL',8),('NULL','Mapfre','NULL',8),('NULL','Onco-Auna','NULL',8),('NULL','Pacifico Seguros','NULL',8),('NULL','Prima AFP','NULL',8),('NULL','Rimac','NULL',8),('NULL','Sanitas Peru','NULL',8),('NULL','Sanna','NULL',8),
					/*---telefonia---*/
					('NULL','Bitel','NULL',9),('NULL','Cabel Vision','NULL',9),('NULL','Claro','NULL',9),('NULL','Directv','NULL',9),('NULL','Entel','NULL',9),('NULL','Fiberpro','NULL',9),('NULL','Mi Fibra','NULL',9),('NULL','Movistar','NULL',9),('NULL','Nubyx','NULL',9),('NULL','Win','NULL',9),
					('NULL','Wow Tel','NULL',9),
					/*---Catalogo--*/
					('NULL','Azzorti','NULL',10),('NULL','Carmel','NULL',10),('NULL','Esika','NULL',10),('NULL','Herbalife','NULL',10),('NULL','Leonisa','NULL',10),('NULL','Livva','NULL',10),('NULL','Natura','NULL',10),('NULL','Omnilife','NULL',10),('NULL','Oriflame','NULL',10),('NULL','Pacifika','NULL',10),
					('NULL','Yanbal','NULL',10),('NULL','Zonia','NULL',10),
					/*--Comida--*/
					('NULL','KFC','NULL',11),('NULL','Tambo','NULL',11),('NULL','Papa Jhons','NULL',11),('NULL','Dunking Donut´s','NULL',11),('NULL','OXXO','NULL',11),('NULL','Pizza Hut','NULL',11),('NULL','Mc Donal´s','NULL',11),('NULL','Beso Frances','NULL',11),('NULL','Bembos','NULL',11),('NULL','Chilis','NULL',11),
					('NULL','Popeyes','NULL',11),('NULL','China Wok','NULL',11),('NULL','Don Belisario','NULL',11),('NULL','Rocky´s','NULL',11),('NULL','Avianka','NULL',11),('NULL','Fridays','NULL',11),('NULL','Que churros','NULL',11),('NULL','Burguer king','NULL',11),('NULL','Pïnkberry','NULL',11),('NULL','Taco bell´s','NULL',11),
					('NULL','Norky´s','NULL',11),('NULL','Don beet','NULL',11),('NULL','Mandam Tusan','NULL',11),('NULL','Pikalo','NULL',11),('NULL','Subway','NULL',11),('NULL','Osso Burguer','NULL',11),('NULL','Coco creepe','NULL',11),('NULL','Amaru','NULL',11),('NULL','Rock ´n Rolls','NULL',11),('NULL','Black Burguer','NULL',11),
					('NULL','Chifa Paruro','NULL',11),('NULL','Poke for the People','NULL',11),('NULL','Burguers La Carniceria','NULL',11),('NULL','ache','NULL',11),('NULL','Mario Almenara','NULL',11),('NULL','Freshii','NULL',11),('NULL','Donde Walter','NULL',11),('NULL','Otto Grill','NULL',11),
					/*---cines-*--*/
					('NULL','Cineplanet','NULL',12),('NULL','Cinemark','NULL',12),('NULL','UVK','NULL',12),
					/*---Diversion**--*/
					('NULL','Happyland','NULL',13),('NULL','Coney Parck','NULL',13),('NULL','Chuck e Cheese','NULL',13),('NULL','Ofertec','NULL',13),('NULL','Fliying Squirrel','NULL',13),('NULL','Game Center','NULL',13),('NULL','Xtreme Fly','NULL',13),('NULL','Extrem Plaza','NULL',13),
					/*--Tecnologia---*/
					('NULL','Rodalexia','NULL',14),('NULL','Claro','NULL',14),('NULL','Ofertec','NULL',14),('NULL','Sasaru','NULL',14),('NULL','VPTrends','NULL',14),('NULL','Gamer Center','NULL',14),('NULL','Youroutlet','NULL',14),('NULL','Xiaomi','NULL',14),('NULL','Dreizt','NULL',14),('NULL','Addiuva','NULL',14),('NULL','Gofix','NULL',14),('NULL','Umut','NULL',14),('NULL','Samsung','NULL',14),('NULL','HISENSE','NULL',14),
					/*---Futbol--*/
					('NULL','Liga 1 Play','NULL',15),('NULL','Joinnus','NULL',22),('NULL','Alianza Lima','NULL',22),
					/*--bebidas--*/
					('NULL','Tada','NULL',16),('NULL','Viña Vieja','NULL',16),
					/*---transport*/
					('NULL','Cabify','NULL',17),('NULL','Star Peru','NULL',17),('NULL','Red Bus','NULL',17),
					/*---deportes--*/
					('NULL','Smart Fit','NULL',18),('NULL','Afit','NULL',18),('NULL','Sport fitnes','NULL',18),('NULL','Joinnus','NULL',18),
					/*---Moda---*/
					('NULL','Footloose','NULL',19),
					/*---Regalos---*/
					('NULL','Ofertec','NULL',20),('NULL','Rosatel','NULL',20),('NULL','Sorprende Lima','NULL',20),
					/*--Belleza--*/
					('NULL','Depilife','NULL',21),('NULL','Home Wellness','NULL',21),
					/*--Conciertos--*/
					('NULL','Lony Play Entertaiment','NULL',22),('NULL','Joinnus','NULL',22),
					/*---Teatro--*/
					('NULL','Joinnus','NULL',23),
					/*---Entretenimiento--*/
					('NULL','Joinnus','NULL',24),
					/*--fiestas--*/
					('NULL','Joinnus','NULL',25),
					/*---Games--*/
					('NULL','Tapi','NULL',26);

insert Usuario VALUES ('NULL','Luis Angel', 'Davila Ponce', '906275956','12345678', '123456', 100.00,'01234567', current_timestamp(),current_timestamp() ),
					  ('NULL', 'James Joshua','Davila Ponce','946420998','87654321','123456789',150.00,'76543210', current_timestamp(), current_timestamp() ),
                      ('NULL', 'Juan Carlos','Perez Ramirez','952893143','52893143','52893143',75.00,'52893143', current_timestamp(), current_timestamp() ),
                      ('NULL', 'Pedro Miguel','Suarez Vertis','992792013','99279201','99279203',80.00,'92792013', current_timestamp(), current_timestamp() ),
                      ('NULL', 'Juan Pablo','Escobar Ramos','943574181','43574181','43574181',250.00,'43574181', current_timestamp(), current_timestamp() ),
                      ('NULL', 'Marco Jose','Benavides Solano','923184356','23184356','23184356',25.00,'23184356', current_timestamp(), current_timestamp() ),
                      ('NULL', 'Walter Omar','Marroquin Colan','927595690','27595690','27595690',40.00,'27595690', current_timestamp(), current_timestamp() ),
                      ('NULL', 'Jose Alfonso','Pinto Vega','968241972','68241972','68241972',15.00,'68241972', current_timestamp(), current_timestamp() );

insert Tipo(Tipo) values ('Promo'),('Evento'),('Tienda'),('Gifcard');

insert Producto VALUES 
	('NUll',2, 186, 'Saoco Halloween Fest - Mike Bahía',60.00,'Ven y disfruta de la mejor Fiesta de Halloween del Sur con artistas internacionales como el colombiano Mike Bahía. No te pierdas este martes 31 de Octubre a las 6:00 pm en el Estadio de Cruz Blanca (Chincha Alta)', '31 de octubre', '250 entradas', current_timestamp(),current_timestamp()),
    ('Null',2, 186, 'Fiesta Halloween Salsera',50.00 ,'¡No te pierdas esta gran fiesta de Halloween este martes 31 de octubre a las 9:00 pm en Av. Benavides 509, Miraflores, donde disfrutarás de un show de Hey Hey Camaguey, Los Barraza y Miranda Orquesta!' , '31 de Octubre', '50 entradas', current_timestamp(),current_timestamp()),
    ('Null',2, 186,'The Purge Halloween',90.00 ,'La mejor fiesta tematica todo incluido de halloween del Perú. Incluye barra libre y corcho libre toda la noche! No te pierdas el proximo martes 31 de octubre a las 9:00 pm en el Club Paraiso Sur','31 de Octubre','200 entradas', current_timestamp(),current_timestamp()),
    ('Null',4 ,187,'Free Fire - 100 Diamantes + 10% de Bonus - Perú',4.00 ,'Gift Card de Free Fire equivalente a 100 diamantes de Free Fire +10% de bonus, solo valido para tiendas en Perú. Para canjearlo, ingresa al link de canje de Hype (htttps://redeem.hype.games/) e ingresa el pin que fue entregado. Luego, ingresa tu ID del usuario, el cual se encuentra en tu app de Free Fire(en Perfil > UID > copiar número). Por ultimo, confirma tu nombre de usuario y se acreditarán los diamantes en tu cuenta)','Null','Null',current_timestamp(),current_timestamp()),
    ('Null',4 ,187,'Mobile Legends: 275 diamantes - Perú',17.90 ,'Gift Card de Mobile Legends equivalente a 275 diamantes de Mobile Legends, solo válido para tiendas en Perú. Para canjearlo, ve al link de canje de Mobile Legends (http://m.mobilelegends.com/en/codexchange) En el campo "Redempion Code", ingresa el codigo recibido, y en el campo "Game ID", ingresa el codigo recibido, y en el campo "Game ID", ingresa tu ID cuenta. Luego, presiona el boton "Send". Al hacerlo, recibiras un correo electronico en el juego con tu codigo de verificación (solo válido durante 30 minutos) o un SMS a tu telefono registrado. Ingresa este codigo de verificación en el campo "Verification Code" y luego haga clic en Redeem para canjear tu codigo.','NULL','NULL',current_timestamp(),current_timestamp()),
    ('Null',4 ,187,'Valorant - 500 Valorant Points',18.00 ,'Gift Card equivalente a 500 Valorant Points, válido para servidores LAN y LAS. Los Riot Points puedenn canjearse en }League of Leguends, Teamfight Tactics, Legends of Runeterra y VALORANT. Para canje online (en el juego directamente): En el juego puede ir la sección compras y seleccionar el medio de pago "Tarjeta Prepagadas y codigods". Colocar el codigo y se acreditarán automaticamente las Riot Coins en la cuenta del usuario. Para canje en web, ingresa a: https://shop.riotgames.com/es-mx/redeem/. Colocar el código y loguearse con su usuario','NULL','NULL',current_timestamp(),current_timestamp()),
    ('NULL',3 ,164 ,'Celular Samsung A34 6.6" 128GB 6GB Negro',899.00 ,'¡Rendimiento sólido para que puedas hacer más, solo con samsung la firma lider en tecnologia presenta su nueva gama de Smartphone Galaxy A34 para que puedas disfrutar de colores mas nitidos, graficos sorprendentes y un sistema de audio unico dizfruta de los detalles realmente vibrantes con la pantalla Super AMOLED de 6.6" con resolucion 1080 x 2340 (FHD+). A ello le sumamos sus poderosas cámaras que te permitirán registra tus mejores experiencias en alta calidad','NULL','NULL',current_timestamp(),current_timestamp()),
    ('NUll',3 ,159 ,'Celular Xiaomi Redmi Note 12 6.67" 4GB 128GB Gris',699.00 ,'En un mundo digitalizado como el que vivimos hoy, es imprescindible contar con un Smartphone rápido y potente para rinda perfecto siempre que lo necesites. Por eso, la prestigiosa marca Xiaomi tiene para el modelo Redmi Note 12 que tiene 128GB de memoria interna y 4GB de memoria RAM. Su amplia pantalla de 6.67" con una excelente resolucion, en perfecta para dizfrutar de tus peliculas, series, videos o videojuegos.','NULL','NULL',current_timestamp(),current_timestamp()),
    ('NULL',3 ,165 ,'TV Hisense 55" UHD 4K Vidaa Dolby Vision Smart 55A6K 2023',999.00 ,'Revive las mejores juegadas de tu equipo favorito, pasa largas horas de emoción comparteiendo con los que más quieres viendo tu serie favorita o mantente informado de los últimos acontecimientos con las exclusiva linea de Televisores Hisense. con el proposito de garantizarte una mejor experiencia, el fabricante lider con la tecnologia a desarrollado un potente audio que te embolbera con nitidos sonidos y la elegante pantalla VA de 50" de resolución UHD. deja que tus personajes tomén mayor protagonismo y aprecia cada detallle de la imagen con colores más reales ','NULL','NULL',current_timestamp(),current_timestamp());
    
DELIMITER //
CREATE PROCEDURE sp_GuardarProducto(
    IN p_id INT,
    IN p_idTipo INT,
    IN p_idEmpresa INT,
    IN p_Titulo VARCHAR(80),
    IN p_Precio DECIMAL(18,2),
    IN p_Detalle VARCHAR(255),
    IN p_Validez VARCHAR(40),
    IN p_Stock VARCHAR(20)
)
BEGIN
  IF p_id = 0 THEN
    -- Insertar un nuevo producto
    INSERT INTO Producto (idTipo, idEmpresa, Titulo, Precio, Detalle, Validez, Stock, create_at, update_at)
    VALUES (p_idTipo, p_idEmpresa, p_Titulo, p_Precio, p_Detalle, p_Validez, p_Stock, NOW(), NOW());
  ELSE
    -- Actualizar un producto existente
    UPDATE Producto
    SET idTipo = p_idTipo,
        idEmpresa = p_idEmpresa,
        Titulo = p_Titulo,
        Precio = p_Precio,
        Detalle = p_Detalle,
        Validez = p_Validez,
        Stock = p_Stock,
        update_at = NOW()
    WHERE id = p_id;
  END IF;
END;
//
DELIMITER ;


DELIMITER //
CREATE PROCEDURE sp_GuardarUsuario(
    IN p_id INT,
    IN p_Nombre CHAR(30),
    IN p_Apellido CHAR(30),
    IN p_NumeroCel CHAR(9),
    IN p_DNI CHAR(8),
    IN p_Contrasena CHAR(16),
    IN p_Saldo DECIMAL(18,2),
    IN p_Codigo CHAR(8)
)
BEGIN
  IF p_id = 0 THEN
    -- Insertar un nuevo usuario
    INSERT INTO Usuario (Nombre, Apellido, NumeroCel, DNI, Contrasena, Saldo, Codigo, create_at, update_at)
    VALUES (p_Nombre, p_Apellido, p_NumeroCel, p_DNI, p_Contrasena, p_Saldo, p_Codigo, NOW(), NOW());
  ELSE
    -- Actualizar un usuario existente
    UPDATE Usuario
    SET Nombre = p_Nombre,
        Apellido = p_Apellido,
        NumeroCel = p_NumeroCel,
        DNI = p_DNI,
        Contrasena = p_Contrasena,
        Saldo = p_Saldo,
        Codigo = p_Codigo,
        update_at = NOW()
    WHERE id = p_id;
  END IF;
END;
//
DELIMITER ;

-- ------procedimientos -----------------

CREATE PROCEDURE sp_getUsuario(IN _usuario_id INT)
SELECT * FROM Usuario WHERE id = _usuario_id;

CREATE PROCEDURE sp_getProducto(IN _producto_id INT)
    SELECT * FROM Producto WHERE id = _producto_id;

CREATE PROCEDURE sp_getEmpresa(IN _empresa_id INT)
    SELECT * FROM Empresa WHERE id = _empresa_id;

-- ------------------------------------------

CREATE VIEW vUsuario AS SELECT * FROM Usuario;
CREATE VIEW vSector AS SELECT * FROM Sector;
CREATE VIEW vEmpresa AS SELECT * FROM Empresa;
CREATE VIEW vProducto AS SELECT * FROM Producto;

SELECT * FROM vUsuario;
SELECT * FROM vSector;
SELECT * FROM vEmpresa;
SELECT * FROM vProducto;

-- select * from Usuario;
-- CALL sp_getUsuario(1);
-- CALL sp_getProducto(1);
-- CALL sp_getEmpresa(1);

