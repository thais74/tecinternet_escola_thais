# tecinternet_escola_thais

## Exercício
Modelagem física

!["Banco de dados de uma escola"](exercicio-escola.png)

### Comandos Etapa 3

1. Faça uma consulta que mostre os alunos que nasceram antes do ano 2009

```sql
SELECT nome, data_nascimento FROM alunos WHERE data_nascimento < '2009-01-01';
```
---

2. Faça uma consulta que calcule a média das notas de cada aluno e as mostre com duas casas decimais.
```sql
SELECT 
    nome, 
    ROUND((primeiranota + segundanota) / 2, 2) AS media
FROM alunos;
```
---

3. Faça uma consulta que calcule o limite de faltas de cada curso de acordo com a carga horária. Considere o limite como 25% da carga horária. Classifique em ordem crescente pelo título do curso.
```sql
SELECT cursos.titulo as Cursos, 
cursos.carga_horaria, 
ROUND(cursos.carga_horaria * 0.25) as Limite_de_Faltas 
FROM cursos 
ORDER BY cursos.titulo;
```
---

4. Faça uma consulta que mostre os nomes dos professores que são somente da área "desenvolvimento".
```sql
SELECT 
    professores.nome as Professores,
    professores.area_atuacao as "Área"
FROM professores
WHERE area_atuacao = "Desenvolvimento";
```
---

5. Faça uma consulta que mostre a quantidade de professores que cada área ("design", "infra", "desenvolvimento") possui.
```sql
SELECT area_atuacao, COUNT(*) 
AS professores FROM professores 
WHERE area_atuacao IN ('design', 'infra', 'desenvolvimento') 
GROUP BY area_atuacao;
```
---



```sql

```
---



```sql

```
---