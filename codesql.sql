CREATE DATABASE consultorio; /*Criando database*/
USE consultorio; /*Ativar o database*/
DROP DATABASE consultorio; /*Apagar o database*/


CREATE TABLE consulta(
	pk_id_consulta int auto_increment primary key,
    endereco varchar(100),
    data_consulta datetime,
    descricao varchar(100)
);

DROP TABLE consulta;

CREATE TABLE paciente(
	pk_id_paciente int auto_increment primary key,
    nome varchar(100) not null,
    data_nasc_paciente date,
    cpf_paciente char(11),
    genero_paciente enum('f', 'm', 'o'),
    endereco_Paciente varchar(100),
    email_paciente varchar(50),
    telefone_paciente char(13)
);

CREATE TABLE Dentista(
	pk_id_dentista int auto_increment primary key,
    nome varchar(100) not null,
    data_nasc_dentista date,
    cro_dentista char(11),
    genero_dentista enum('f', 'm', 'o'),
    endereco_dentista varchar(100),
    email_dentista varchar(50),
    telefone_dentista char(13)
);

INSERT INTO paciente(nome,data_nasc_paciente,cpf_paciente,genero_paciente,endereco_Paciente,email_paciente,telefone_paciente) VALUES
('Lucia Lima','19870129','23495494521','m','Rua lapa tito,50','teste1desousalima@gmail.com','551165069406'),
('Claudia Lima','19870329','23495494523','m','Rua lapa tito,52','teste3desousalima@gmail.com','551192069406'),
('Enzo Lima','19870429','23495494524','m','Rua lapa tito,53','teste4desousalima@gmail.com','551132069406'),
('Bruna Lima','19870529','23495494525','m','Rua lapa tito,54','teste5desousalima@gmail.com','551182069406'),
('Ana Lima','19870629','23495494526','m','Rua lapa tito,55','teste6desousalima@gmail.com','551192069406'),
('Julia Lima','19870729','23495494527','m','Rua lapa tito,56','teste7desousalima@gmail.com','551112069406'),
('Mariana Lima','19870829','23495494528','m','Rua lapa tito,57','teste8desousalima@gmail.com','551137069406'),
('Luzia Lima','19870929','23495494529','m','Rua lapa tito,58','teste9desousalima@gmail.com','551174079406'),
('Brenda Lima','19871029','23495494530','m','Rua lapa tito,59','teste10desousalima@gmail.com','551108029406'),
('Rose Lima','19871129','23495494531','m','Rua lapa tito,60','teste11desousalima@gmail.com','551123079406');

INSERT INTO dentista(nome,data_nasc_dentista,cro_dentista,genero_dentista,endereco_dentista,email_dentista,telefone_dentista) VALUES
('Wilton Peixoto','19781129','13328633689','m','Rua lapa tito,50','wiltonpeixoto@gmail.com','551145367845');

INSERT INTO consulta(endereco,data_consulta,descricao) values
('Rua Julio Freitas, 35','2024-10-11 14:30:45','Inserção dentária');

DESCRIBE paciente; /*Exibe estrutura da tabela*/

SELECT * FROM paciente; /*Exibe Colunas da tabela*/

SELECT * FROM dentista; /*Exibe Colunas da tabela*/

SELECT * FROM consulta; /*Exibe Colunas da tabela*/

DELETE FROM paciente WHERE pk_id_paciente='4';