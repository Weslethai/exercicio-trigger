use exerciciotrigger;

CREATE table Pedidos(
  ID_pedido INT AUTO_INCREMENT PRIMARY KEY,
  Data_pedido datetime,
  Nome_cliente varchar (100)
);
insert into Pedidos(data_pedido, nome_cliente) VALUES
(now(),'Maria Clara'),
(now(),'Claudio Silva'),
(now(),'Angélica Silva');

DELIMITER $
CREATE TRIGGER Registro_Datacriacao_Pedido
before insert on Pedidos
for EACH ROW
begin 
	set new.Data_pedido = now();
    end$ delimiter ;

insert into Pedidos(nome_cliente) values ('João Silva');
select*from Pedidos;