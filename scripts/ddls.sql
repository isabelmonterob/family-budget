-- public.tbl_amortizacion definition

-- Drop table

-- DROP TABLE public.tbl_amortizacion;

CREATE TABLE public.tbl_amortizacion (
	id_amortizacion serial4 NOT null PRIMARY KEY,
	fecha timestamp NOT NULL,
	cuota int not null,
	monto numeric(10, 2) NOT NULL,
	saldo decimal,	
	pagado bool
);

alter table tbl_instrumento add column id_amortizacion serial4;
alter table tbl_instrumento add CONSTRAINT tbl_instrumento_id_amortizacion_fkey FOREIGN KEY (id_amortizacion) REFERENCES public.tbl_amortizacion(id_amortizacion)
