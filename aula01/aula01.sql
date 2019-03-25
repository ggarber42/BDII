
drop table funcionario;
drop table departamento;
drop sequence s_funcionario;
drop sequence s_departamento;

Create table departamento
(id_departamento NUMBER constraint PK_departamento PRIMARY KEY, 
 nome varchar2(10)
);

Create table funcionario 
(id_funcionario NUMBER constraint pk_funcionario PRIMARY KEY, 
 nome VARCHAR2(10) NOT NULL, 
 salario NUMBER,
 id_departamento  NUMBER);

alter table funcionario add constraint FK_id_departamento foreign key (id_departamento) 
            references departamento (id_departamento);

CREATE SEQUENCE s_funcionario nocache;
CREATE SEQUENCE s_departamento nocache;

insert into departamento(id_departamento,nome) values(s_departamento.nextval, 'Rh');
insert into departamento values(s_departamento.nextval, 'Vendas');

insert into funcionario(id_funcionario,nome,salario,id_departamento) values(s_funcionario.nextval,'Ana',2000,1);

insert into funcionario(id_funcionario,nome,salario,id_departamento) values(s_funcionario.nextval,'Pedro',3000,1);

insert into funcionario(id_funcionario,nome,salario,id_departamento) values(s_funcionario.nextval,'Maria',4000,2);

select * from funcionario;

update funcionario set id_departamento=1 where id_funcionario=2;

select funcionario.nome,departamento.nome
from funcionario inner join departamento
on funcionario.id_departamento=departamento.id_departamento;

insert into departamento values(3,'Inf');

select f.nome,d.nome
from funcionario f left outer join departamento d 
on f.id_departamento = d.id_departamento;

select f.nome,d.nome
from funcionario f right outer join departamento d 
on f.id_departamento = d.id_departamento;

delete from departamento where id_departamento = 3;

select * from funcionario;

select nome
from funcionario
where id_departamento = ( select id_departamento from departamento where nome='Rh');

select nome
from funcionario
where id_departamento in ( select id_departamento
                                            from departamento
                                            where nome in ('Vendas','Rh'));

select nome
from funcionario
where salario = ( select max(salario)
                            from funcionario);

select nome
from funcionario
where salario = ( select max(salario)
                            from funcionario f2
                            where id_departamento = funcionario.id_departamento);                                            


