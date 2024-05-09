drop database dbConsultorio;
create database dbConsultorio;
use dbConsultorio;

create table tbMedico(
    idMed int not null auto_increment,    
    nmMedico varchar(45),
    telefoneMedico varchar(9),
    primary key(idMed)

);

create table tbPaciente(
    idPac int not null auto_increment,
    nmPaciente varchar(45),
    telefonePaciente varchar(9),
    convenio varchar(45),
    primary key(idPac)
);
create table tbReceitaMedica(
    idRec int not null auto_increment,
    descricao varchar(500),
    codConsul int null,
    primary key(idRec)
);

create table tbConsulta(
idConsulta INT not null auto_increment,
dt_consulta DATETIME,
idMed int not null,
idPac INT not null,
idRec int not null,
primary key(idConsulta),
foreign key(idMed) references tbMedico(idMed),
foreign key(idPac) references tbPaciente(idPac),
foreign key(idRec) references tbReceitaMedica(idRec)
);

