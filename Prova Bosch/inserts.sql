/* Esse arquivo deve ser rodado apos o'createdatabase.sql'*/

INSERT INTO Departamentos (dep_nome, dep_local) VALUES
    ('REMAN', 104),
    ('ICO', 101),
    ('ETS', 401),
    ('FCM', 303),
    ('INOVE', 303);

INSERT INTO Grade_salarial (grade, sal_min, sal_max) VALUES
    (1, 1500, 4000),
    (2, 4001, 9000),
    (3, 9001, 22000),
    (4, 22001, 50000);
    
INSERT INTO Funcionarios (edv, nome, lider, data_de_contratacao, salario, dep_id) VALUES
    (92790062,'João Manfredo','Andrea','9/26/01', 12500, 1),
    (91004090,'Débora Junior','Andrea','3/2/99', 15600, 1),
    (94566222,'Carla Rodrigues','Andrea','10/4/90', 20000, 1),
    (96334100,'Maciel Oliveira','Andrea','12/6/95', 16500, 1),
    (97885245,'Guilherme Guilhermo','Marcos','5/13/10', 9000, 2),
    (92894706,'Jessica Lima','Marcos','8/14/15', 25678, 2),
    (91450032,'Isabella Machado','Marcos','1/22/93', 10900, 2),
    (94661932,'Carlo Daniel','Lucio','1/31/90', 13750, 2),
    (95780634,'Maria Santana','Lucio','9/5/15', 8000, 2),
    (97881945,'Dominic Ferreira','Pietra','2/9/20', 2000, 3),
    (98490620,'Daniela Silva','Pietra','2/9/20', 1500, 3),
    (96854299,'Felipe Augusto','Pietra','2/9/20', 1600, 3),
    (97805503,'Natalia Reis','Pietra','6/14/19', 2200, 3),
    (90103456,'Thiago Dias','Pietra','8/24/18', 2800, 3),
    (96314782,'Ana Mass','Captu','2/19/97', 3600, 4),
    (97854318,'Otávio Luis','Captu','5/19/17', 9200, 4),
    (94862122,'Luisa Otávia','Captu','11/11/02', 10500, 4),
    (97864320,'Lucas Moura','Captu','8/29/90', 6600, 4),
    (96315782,'Fernanda Lacerda','Captu','12/17/99', 2900, 4),
    (97546210,'Caroline Adeus','Captu','2/19/18', 4555, 4),
    (94621573,'Marco Valastro','Captu','3/30/03', 7000, 4),
    (96548432,'Valdemir Cantante','Jonas','3/15/20', 1200, 5),
    (97511020,'Eduarda Souza','Jonas','8/14/11', 1100, 5),
    (96410654,'Allan Jonas','Felipe','6/17/08', 3200, 5),
    (95645012,'Diana Jones','Felipe','9/24/02', 2050, 5),
    (94746054,'Mario Bros','Felipe','1/18/90', 25600, 5),
    (92085478,'Aline Franco','Jonas','5/5/96', 3700, 5);

