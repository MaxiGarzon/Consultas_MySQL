 Create Table Fabricante_pieza(Id_Fabricante_Pieza INT (11), 
 Nombre_Fabri_Pie VARCHAR(45),
 Dire_Fabri_Pie VARCHAR(4)); 
Insert into componente_electrónicos.vendedor_pieza (Nombre_Ven_Pie, Dire_Ven_Pie) Values ('Facundo Alvarado', 'Islas Malvinas 2300');
Update componente_electrónicos.vendedor_pieza set Nombre_Ven_Pie = 'Stephen King', Dire_Ven_Pie = 'Urquiza 1200' where idVendedor_Pieza = "71";
Delete from componente_electrónicos.vendedor_pieza where (Nombre_Ven_pie = 'Maximiliano Garzón') and (idVendedor_pieza = 1);     
Insert into componente_electrónicos.piezas (Nombre_pie, descripción_pie, precio_pie, tipo_Pieza, suministrador_idsuministrador, fabricante_pieza_idfabricante_pieza) values ('Euroconector', 'Euroconector para antena de television', '1000', 'Philips', '8', '11'); 
Update componente_electrónicos.piezas set fabricante_pieza_idfabricante_pieza = 11 where (idPiezas = '243'); 
Delete from componente_electrónicos.piezas where (idPiezas = 230); 
Insert Into componente_electrónicos.fabricante_pieza (Nombre_Fabri_Pie, Dire_Fabri_Pie) values ('Adrian Lauriente', 'Palermo 1400'); 
Update componente_electrónicos.fabricante_pieza set nombre_fabri_pie = 'Levi Ackerman' where (Idfabricante_Pieza = 4); 
Delete from componente_electrónicos.fabricante_pieza where idFabricante_Pieza = 12; 
Insert Into componente_electrónicos.suministrador (Nombre_Sum) values ('Monica Argento');
Update componente_electrónicos.suministrador set nombre_sum = 'Francisco Ludeña' where (IdSuministrador = 11); 
Delete from componente_electrónicos.suministrador where idSuministrador = 15; 
Insert into componente_electrónicos.equipos (Nombre_Equi, Descripción_Equi, Tipo_Equipo, Precio_Equi, fabricante_equipo_idfabricante_equipo) values ('Celular','Iphone 13 Promax', 'Apple', '500000','60');
Update componente_electrónicos.equipos set nombre_equi = 'Television' where (nombre_equi = 'Televisor') and (idequippos = 61); 
Delete from componente_electrónicos.equipos where idEquippos = 61; 
insert into componente_electrónicos.fabricante_equipo (nombre_fabri_equi, dire_fabri_equi, vendedor_pieza_idvendedor_pieza) values ('Lucas Mellera','Buenos Aires 1300', '71'); 
Update componente_electrónicos.fabricante_equipo set nombre_fabri_equi = 'Andy Chango' where (nombre_fabri_equi = 'Maximiliano Alvarado') and (idfabricante_equipo = 52); 
Delete from componente_electrónicos.fabricante_equipo where idFabricante_Equipo = 63; 
Insert Into componente_electrónicos.vendedor_equipos (Nombre_Ven_Equi, Dire_Ven_Equi, Equipos_idEquippos) Values ('Roberto Musso', 'Uruguay 3200', '69'); 
Update componente_electrónicos.vendedor_equipos set Dire_Ven_Equi =  'Uruguay 1200' where (Nombre_Ven_Equi = 'Roberto Musso') And (dire_ven_equi = 'Uruguay 3200') and (equipos_idequippos = 69); 
Delete from componente_electrónicos.vendedor_equipos where idVendedor_Equipos = 54;
Select Precio_Pie, Nombre_Pie from componente_electrónicos.piezas P where P.Nombre_Pie = "Euroconector"; 
Select * from componente_electrónicos.piezas P order by Precio_Pie; 
Select * from componente_electrónicos.equipos E order by Precio_Equi desc; 
Select COUNT(idEquippos) as 'Cantidad de televisores' from componente_electrónicos.equipos E where E.Nombre_Equi LIke "Tele%";
Select * From componente_electrónicos.equipos P where P.Nombre_Equi like "Mou%" order by P.Precio_Equi; 
Select * from componente_electrónicos.piezas P where P.Nombre_Pie like "Tarjeta de%" order by P.Precio_Pie desc; 
Select * from componente_electrónicos.fabricante_pieza F where F.Nombre_Fabri_Pie = "Carlos Alberto García"; 
Select Nombre_Fabri_Pie, Dire_Fabri_Pie from componente_electrónicos.vendedor_pieza V inner join componente_electrónicos.piezas P on P.idPiezas = V.Piezas_idPiezas inner join componente_electrónicos.fabricante_pieza F on F.idFabricante_Pieza = P.Fabricante_Pieza_idFabricante_Pieza where V.Nombre_Ven_Pie = "Luis Espinoza";  
Select Nombre_Fabri_Equi, Dire_Fabri_Equi from componente_electrónicos.vendedor_equipos V inner join componente_electrónicos.equipos E on E.idEquippos = V.Equipos_idEquippos inner join componente_electrónicos.fabricante_equipo F on F.idFabricante_Equipo = E.Fabricante_Equipo_idFabricante_Equipo where V.Nombre_Ven_Equi = "Mateo Cerati";  
Select idVendedor_Pieza, Nombre_Ven_Pie from componente_electrónicos.vendedor_pieza V inner join componente_electrónicos.fabricante_equipo F on V.idVendedor_Pieza = F.Vendedor_Pieza_idVendedor_Pieza where F.Nombre_Fabri_Equi = "Alejandro Delgado"; 
Select Nombre_Fabri_Pie, Dire_Fabri_Pie from componente_electrónicos.fabricante_pieza W inner join componente_electrónicos.piezas P on W.idFabricante_Pieza = P.Fabricante_Pieza_idFabricante_Pieza inner join componente_electrónicos.vendedor_pieza V on V.Piezas_idPiezas = P.idPiezas inner join componente_electrónicos.fabricante_equipo E on E.Vendedor_Pieza_idVendedor_Pieza = V.idVendedor_Pieza where E.Nombre_Fabri_Equi = "Agustín Hoyos";   
Select idFabricante_Pieza, Nombre_Fabri_Pie, Dire_Fabri_Pie from componente_electrónicos.fabricante_pieza Q inner join componente_electrónicos.piezas P on P.Fabricante_Pieza_idFabricante_Pieza = Q.idFabricante_Pieza inner join componente_electrónicos.vendedor_pieza V on V.Piezas_idPiezas = P.idPiezas inner join componente_electrónicos.fabricante_equipo F on V.idVendedor_Pieza = F.Vendedor_Pieza_idVendedor_Pieza inner join componente_electrónicos.equipos E on E.Fabricante_Equipo_idFabricante_Equipo = F.idFabricante_Equipo inner join componente_electrónicos.vendedor_equipos Z on Z.Equipos_idEquippos = E.idEquippos where Z.Nombre_Ven_Equi = "Alberto Spinetta";   
Select idfabricante_pieza, nombre_fabri_pie, nombre_pie from componente_electrónicos.fabricante_pieza F inner join componente_electrónicos.piezas P on P.Fabricante_Pieza_idFabricante_Pieza = F.idFabricante_Pieza where F.idFabricante_Pieza = 10 order by Nombre_Pie;  
Select idfabricante_Equipo, Nombre_Fabri_equi, nombre_Equi from componente_electrónicos.equipos E inner join componente_electrónicos.fabricante_equipo F on F.idFabricante_Equipo = E.Fabricante_Equipo_idFabricante_Equipo where idFabricante_Equipo = 52 order by Nombre_Equi; 
Select Nombre_Equi, Precio_Equi from componente_electrónicos.equipos where (Tipo_Equipo = 'Philips') or (tipo_equipo = 'Samsung') order by Precio_Equi; 
Select Nombre_Pie, Precio_Pie from componente_electrónicos.piezas where (Tipo_Pieza = 'Kingsto') or (Tipo_Pieza = 'Arduino') order by idPiezas;   
Select Nombre_Fabri_Pie as 'Nombre del Fabricante de Pieza', Nombre_Pie as 'Nombre de la Pieza que fabrico', Nombre_Ven_Pie as 'Nombre de quien vende esa pieza' from componente_electrónicos.fabricante_pieza F inner join componente_electrónicos.piezas P on P.Fabricante_Pieza_idFabricante_Pieza = F.idFabricante_Pieza inner join componente_electrónicos.vendedor_pieza V on V.Piezas_idPiezas = P.idPiezas;   
Select MAX(Precio_Pie) as 'El precio de la pieza mas cara es: ' from componente_electrónicos.piezas; 
Select MAX(Precio_Equi) as 'El precio del equipo mas caro es: ', MIN(Precio_Equi) as 'El precio del equipo mas barato es: ' from componente_electrónicos.equipos;   
Select COUNT(idEquippos) as 'Csntidad de equipos fabricados por Gabriel Guaymas' from componente_electrónicos.equipos E inner join componente_electrónicos.fabricante_equipo F on F.idFabricante_Equipo = E.Fabricante_Equipo_idFabricante_Equipo where F.Nombre_Fabri_Equi = "Gabriel Guaymas"; 
Select Nombre_Pie, Precio_Pie from componente_electrónicos.piezas P where P.Precio_Pie between '1000' and '5000' order by Precio_Pie; 
Select Nombre_Equi, Tipo_Equipo, Precio_Equi from componente_electrónicos.equipos E where E.Precio_Equi between '200000' and '500000' order by Precio_Equi;   
Select COUNT(IF(Tipo_Pieza='Arduino',Tipo_Pieza,Null)) as 'Cantidad de piezas de la marca Arduino', COUNT(IF(Tipo_PIeza='Kingston',Tipo_Pieza,Null)) as 'Cantidad de piezas de la marca Kingston',COUNT(IF(Tipo_PIeza='Corsair',Tipo_Pieza,Null)) as 'Cantidad de piezas de la marca Corsair',COUNT(IF(Tipo_PIeza='Gigabyte',Tipo_Pieza,Null)) as 'Cantidad de piezas de la marca Gigabyte',COUNT(IF(Tipo_PIeza='Philips',Tipo_Pieza,Null)) as 'Cantidad de piezas de la marca Philips',COUNT(IF(Tipo_PIeza='Supereuro 732',Tipo_Pieza,Null)) as 'Cantidad de piezas de la marca Supereuro 732',COUNT(IF(Tipo_PIeza='Samsung',Tipo_Pieza,Null)) as 'Cantidad de piezas de la marca Samsung',COUNT(IF(Tipo_PIeza='Intel',Tipo_Pieza,Null)) as 'Cantidad de piezas de la marca Intel',COUNT(IF(Tipo_PIeza='AMD',Tipo_Pieza,Null)) as 'Cantidad de piezas de la marca AMD',COUNT(IF(Tipo_PIeza='Kingston',Tipo_Pieza,Null)) as 'Cantidad de piezas de la marca Kingston',COUNT(IF(Tipo_PIeza='Asus',Tipo_Pieza,Null)) as 'Cantidad de piezas de la marca Asus',COUNT(IF(Tipo_PIeza='IQual',Tipo_Pieza,Null)) as 'Cantidad de piezas de la marca IQual',COUNT(IF(Tipo_PIeza='PDIY',Tipo_Pieza,Null)) as 'Cantidad de piezas de la marca PDIY',COUNT(IF(Tipo_PIeza='Cyclon',Tipo_Pieza,Null)) as 'Cantidad de piezas de la marca Cyclon',COUNT(IF(Tipo_PIeza='RTX',Tipo_Pieza,Null)) as 'Cantidad de piezas de la marca RTX' from componente_electrónicos.piezas; 









 
 
 
 