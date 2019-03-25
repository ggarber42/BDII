Create table area(id_area NUMBER constraint pK_area PRIMARY KEY, nome varchar(10));

Create table curso(id_curso NUMBER constraint pK_area PRIMARY KEY);
Alter table curso add constraint fK_area foreign key (id_area) references area (id_area);

Create table disciplina(id_disciplina NUMBER constraint pk_area PRIMARY KEY,
codigo varchar(10), nome_disciplina varchar(20), n_creditos NUMBER);
Alter table disciplina add constraint fk_curso foreign key (id_curso) references curso (id_curso);

Create table aluno(id_funcionario NUMBER constraint pk_funcionario PRIMARY KEY,
nome_aluno varchar(20), data_nascimento NUMBER);

Create table professor(id_professor NUMBER constraint pk_professor PRIMARY KEY,
n_horas NUMBER);
Alter table professor add constraint fK_area foreign key (id_area) references area (id_area);

Create table turma(id_turma NUMBER constraint pk_turma PRIMARY KEY,
semestre varchar(10), turno varchar(10), max_alunos NUMBER);
Alter table turma add constraint fk_disciplina foreign key (id_disciplina) references disciplina (id_disciplina);
Alter table turma add constraint fk_professor foreign key (id_professor) references disciplina (id_professor);

Create table turma_aluno (id_turma NUMBER constraint pk_turma PRIMARY KEY,id_aluno NUMBER constraint pk_aluno PRIMARY KEY,media_final NUMBER);
Alter table turma_aluno add constraint fk_turma foreign key (id_turma) references turma (id_turma);
Alter table turma_aluno add constraint fk_curso foreign key (id_curso) references curso (id_curso);

Create table aluno_curso (id_aluno NUMBER constraint pk_aluno PRIMARY KEY, id_aluno NUMBER constraint pk_aluno PRIMARY KEY, data_inicio DATE, data_fim DATE, turno varchar);
Alter table aluno_curso add constraint fk_turma foreign key (id_turma) references turma (id_turma);
Alter table aluno_curso add constraint fk_curso foreign key (id_curso) references curso (id_curso);
