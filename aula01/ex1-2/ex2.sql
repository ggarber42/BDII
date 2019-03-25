/*1. Apresentar o nome do curso e as disciplinas.
2. Apresentar o nome do professor e a sua área
3. Apresentar o código da turma, o semestre, o nome do aluno e a nota final
4. Apresentar o nome do aluno, o nome do curso para os alunos que já concluíram o curso.
5. Apresentar código da turma , o nome da disciplina e o nome do professor
6. Apresentar o nome da disciplina e a nota_final das disciplinas cursadas pelo Aluno João da Silva no semestre de 2013/1;
7. Apresentar o nome dos alunos que foram aprovados na disciplina de Lógica de Programação no semestre de 2014/1;*/

-- criar os seguintes arquivos: create.sql
--                                          drop.sql
--                                          insert.sql
-- criar as PK na criação das tabelas
-- Utilizar o comando alter table para adicionar as FK
-- Criar sequence para: curso, disciplina, aluno, professor,turma (utilizar a opção nocache)

-- area(id_area,nome)
-- pk:id_area

-- curso (id_curso,nome_curso,n_semestres,turno,id_area);
-- pk:id_curso
-- fk:id_area

-- disciplina (id_disciplina, codigo varchar2,nome_disciplina,n_creditos,id_curso);
-- pk: id_disciplina
-- fk:id_curso

-- aluno (id_aluno,nome_aluno, data_nascimento);
-- pk:id_aluno

-- professor (id_professor,nome_professor,n_horas,id_area);
-- pk:id_professor
-- fk:: id_area

-- turma (id_turma,id_disciplina,id_professor,semestre,turno,max_alunos);
-- pk:id_turma
-- fk:id_disciplina
-- fk:id_professor

-- turma_aluno (id_turma,id_aluno,media_final);
-- pk:id_turma,id_aluno
-- fk:id_turma
-- fk:id_aluno

-- aluno_curso (id_aluno,id_curso,data_inicio,data_fim,turno);
-- pk:id_aluno, id_curso
-- fk:id_aluno
-- fk:id_curso


