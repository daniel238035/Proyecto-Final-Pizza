create table tb_cliente
(
	tb_cliente_id serial not null,
	tb_cliente_cod character(2) not null,
	tb_cliente_nom character varying(50) not null,
	constraint pk_cliente primary key(tb_cliente_id),
	constraint unq_cliente_cod unique(tb_cliente_cod),
	constraint unq_cliente_nom unique(tb_cliente_nom),
	constraint chk_cliente_id check(tb_cliente_id > 0),
	constraint chk_cliente_cod check(tb_cliente_cod similar to '[0-9][0-9]')
);

create table tb_producto
(
	tb_producto_id serial not null,
	tb_producto_cod character(2) not null,
	tb_producto_nom character varying(50) not null,
	tb_producto_preuni decimal(10,2) not null,
	tb_producto_sto integer not null,
	constraint pk_producto primary key(tb_producto_id),
	constraint unq_producto_cod unique(tb_producto_cod),
	constraint unq_producto_nom unique(tb_producto_nom),
	constraint chk_producto_id check(tb_producto_id > 0),
	constraint chk_producto_cod check(tb_producto_cod similar to '[0-9][0-9]'),
	constraint chk_producto_preuni check(tb_producto_preuni > 0.00),
	constraint chk_producto_sto check(tb_producto_sto >= 0)
);

create table tb_venta
(
	tb_venta_id serial not null,
	tb_venta_fechor timestamp not null default now(),
	tb_venta_tot decimal(10,2) not null,
	tb_cliente_id integer not null,
	constraint pk_venta primary key(tb_venta_id),
	constraint fk_cliente_venta foreign key(tb_cliente_id) references tb_cliente(tb_cliente_id),
	constraint chk_venta_id check(tb_venta_id > 0),
	constraint chk_venta_fechor check(tb_venta_fechor <= now()),
	constraint chk_venta_tot check(tb_venta_tot > 0.00)
);

create table tb_detalleventa
(
	tb_detalleventa_id serial not null,
	tb_detalleventa_can integer not null,
	tb_detalleventa_preuni decimal(10,2) not null,
	tb_detalleventa_subtot decimal(10,2) not null,
	tb_venta_id integer not null,
	tb_producto_id integer not null,
	constraint pk_detalleventa primary key(tb_detalleventa_id),
	constraint fk_venta_detalleventa foreign key(tb_venta_id) references tb_venta(tb_venta_id),
	constraint fk_producto_detalleventa foreign key(tb_producto_id) references tb_producto(tb_producto_id),
	constraint chk_detalleventa_id check(tb_detalleventa_id > 0),
	constraint chk_detalleventa_can check(tb_detalleventa_can > 0),
	constraint chk_detalleventa_preuni check(tb_detalleventa_preuni > 0.00),
	constraint chk_detalleventa_subtot check(tb_detalleventa_subtot = (tb_detalleventa_can * tb_detalleventa_preuni))
);

insert into tb_cliente(tb_cliente_cod,tb_cliente_nom) values('01','PAUL');
insert into tb_cliente(tb_cliente_cod,tb_cliente_nom) values('02','ANDREA');
insert into tb_cliente(tb_cliente_cod,tb_cliente_nom) values('03','LUIS');

insert into tb_producto(tb_producto_cod,tb_producto_nom,tb_producto_preuni,tb_producto_sto) values('01','INKA KOLA',1.9,100);
insert into tb_producto(tb_producto_cod,tb_producto_nom,tb_producto_preuni,tb_producto_sto) values('02','TRIPLE KOLA',1.2,120);
insert into tb_producto(tb_producto_cod,tb_producto_nom,tb_producto_preuni,tb_producto_sto) values('03','COCA COLA',1.3,140);
insert into tb_producto(tb_producto_cod,tb_producto_nom,tb_producto_preuni,tb_producto_sto) values('04','PEPSI COLA',1.6,90);
insert into tb_producto(tb_producto_cod,tb_producto_nom,tb_producto_preuni,tb_producto_sto) values('05','CASINELLI',1.1,180);