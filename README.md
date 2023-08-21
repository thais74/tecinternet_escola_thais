# tecinternet_escola_thais

### Exercício
Modelagem física

!["Banco de dados de uma escola"](exercicio-escola.png)

```sql
INSERT INTO professores(nome, area_atuacao, id_curso) 
VALUES (
    'Jon Oliva',
    'Infra',
    5
), (
    'Lemmy Kilmister',
    'Design',
    4
    
), (
    'Neil Peart',
    'Design',
    3
   
), (
    'Ozzy Osbourne',
    'Desenvolvimento',
    2
    
), (
	'David Gilmour',
    'Desenvolvimento',
    1
);

INSERT INTO alunos(nome, data_nascimento, primeiranota, segundanota, curso_id) 
VALUES 
    ('Alex', '2002-05-28', 9.0, 2.0, 2),
    ('Bianca', '2003-01-15', 7.0, 8.0, 1),
    ('Carlos', '2002-08-03', 5.0, 6.0, 3),
    ('Daniela', '2001-11-22', 8.0, 9.0, 2),
    ('Eduardo', '2003-03-10', 6.0, 7.0, 4),
    ('Fernanda', '2002-06-18', 9.0, 8.0, 5),
    ('Gabriel', '2001-09-25', 7.0, 6.0, 4),
    ('Helena', '2000-04-07', 8.0, 9.0, 5),
    ('Isabela', '1997-07-14', 6.0, 7.0, 3);

```