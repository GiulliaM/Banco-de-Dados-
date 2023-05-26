USE bdEscolaIdiomas

--1
SELECT nomeAluno, nomeCurso FROM tbAluno
INNER JOIN tbMatricula ON tbMatricula.codMatricula=tbMatricula.codAluno
INNER JOIN tbTurma ON tbTurma.codCurso=tbTurma.codTurma
INNER JOIN tbCurso ON tbCurso.codCurso=tbCurso.codCurso

--2
SELECT tbCurso.nomeCurso, COUNT(tbAluno.codAluno) AS qtde_alunos FROM tbAluno
INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
INNER JOIN tbTurma ON tbMatricula.codTurma = tbTurma.codTurma
INNER JOIN tbCurso ON tbTurma.codCurso = tbCurso.codCurso
GROUP BY tbCurso.nomeCurso;

--3
SELECT tbTurma.nomeTurma, COUNT(tbAluno.codAluno) AS qtde_alunos FROM tbAluno
INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
INNER JOIN tbTurma ON tbMatricula.codTurma = tbTurma.codTurma
GROUP BY tbTurma.nomeTurma;

--4
SELECT COUNT(tbAluno.codAluno) AS qtde_alunos FROM tbAluno
INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
WHERE MONTH(tbMatricula.dataMatricula) = 5 AND YEAR(tbMatricula.dataMatricula) = 2016;

--5
SELECT tbAluno.nomeAluno, tbTurma.nomeTurma FROM tbAluno
INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
INNER JOIN tbTurma ON tbMatricula.codTurma = tbTurma.codTurma
ORDER BY tbAluno.nomeAluno;

--6
SELECT tbCurso.nomeCurso, tbTurma.horarioTurma FROM tbCurso
INNER JOIN tbTurma ON tbCurso.codCurso = tbTurma.codCurso;

--7
SELECT tbAluno.naturalidadeAluno, COUNT(tbAluno.codAluno) AS qtde_alunos FROM tbAluno
GROUP BY tbAluno.naturalidadeAluno;

--8
SELECT tbAluno.naturalidadeAluno, COUNT(tbAluno.codAluno) AS qtde_alunos FROM tbAluno
GROUP BY tbAluno.naturalidadeAluno;

--9
SELECT tbAluno.nomeAluno FROM tbAluno
INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
INNER JOIN tbTurma ON tbMatricula.codTurma = tbTurma.codTurma
INNER JOIN tbCurso ON tbTurma.codCurso = tbCurso.codCurso
WHERE tbAluno.nomeAluno LIKE 'A%' AND tbCurso.nomeCurso = 'Inglês';

--10
SELECT COUNT(tbAluno.codAluno) AS qtde_alunos FROM tbAluno
INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
WHERE YEAR(tbMatricula.dataMatricula) = 2016;