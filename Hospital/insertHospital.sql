insert into pacientes (id,nome,dataNascimento,sexo,telefone,endereco,cidade,estado,email,cpf,dataCadastro) values
(null, 	'Vanessa Rodrigues Silva',		'1997-03-27',		'Feminino',		'(11) 99998-1234',	 'Rua Rodrigues Martins, nº1460', 	'São Paulo',				'SP',		'VanessaSilva097@gmail.com',	 '123.456.789-00',		now()),
(null, 	'Matias Silveira dos Santos',	'1980-10-09',		'Masculino',	'(51) 97310-7742',	 'Rua Fernando Lima, nº876', 		'Rio Grande do Sul',		'RS',		null,							 '876.932.111-09',		now()),
(null,	'Rebeca Braga Lima',			'2002-07-16',		'Feminino',		'(16) 92347-5604',	 'Rua João Pereira, nº2987',		'São Joaquim da Barra',		'SP',		'BecaLima16@gmail.com',			 '342.893.900-10',		now()),
(null, 	'Nathan Ferreira Garcia',		'1995-11-21',		'Masculino',	'(98) 99826-3814',	 'Rua Maria Andrade, nº230',		'São Luís',					'MA',		'Garciafg11@gmail.com',			 '915.765.248-20',		now());

select *  from pacientes;

insert into medico (id,nome,especialidade,dataNascimento,telefone,endereco,cidade,estado,email,crm) values
(null,	'Sabrina Rossi Andrade',			'Dermatologista',		'1994-10-19',			'(11) 94564-5630',	 	'Rua das Palmeiras, nº2560', 	'São Paulo',				'SP',		'SabiRossi19@gmail.com',	 	'451289'),
(null,	'Raquel Monteiro ALves',			'Ginecologista',		'1998-02-20',			'(21) 99235-6780',	 	'Rua das Margarida, nº321', 	'Rio de Janeiro',			'RJ',		'RaquelAlves@gmail.com',	 	'114548'),
(null,	'Mauro Júnior Martins',				'Cardiologista',		'2982-08-15',			'(31) 99032-7804',	 	'Rua do Limoeiro, nº569',		'Belo Horizonte',			'BH',		'JuniorMartins82@gmail.com',	'634215'),
(null,	'Danilo Fontenelle  Ribeiro',		'Pediatria',			'1995-12-23',			'(16) 98838-3814',	 	'Rua Julio Bianch, nº982',		'São Joaquim da Barra',		'SP',		'Fontenelle23@gmail.com',		'897512');

select *  from medico;

insert into consulta (id,idpaciente,idmedico,dataConsulta,hora,descricao,statusConsulta) values
(null,	'1',	'1',	'2025-06-06',		'14:30:00',	 	'Avaliação Completa', 			'Realizada'),
(null,	'2',	'3',	'2025-05-14',		'09:50:00',	 	'Consulta de Acompanhamento', 	'Realizada'),
(null,	'3',	'2',	'2025-06-17',		'08:00:00',	 	'Exame Clínico',				'Realizada'),
(null,	'4',	'3',	'2025-05-30',		'06:50:00',	 	'Avaliação Inicial',			'Realizada');

select *  from consulta;

insert into exames (id,idconsulta,tipoExame,dataExame) values
(null,	'1',	'Testes de Alergia e de Fungos',	'2025-06-17'),
(null,	'2',	'Ecocardiograma',					'2025-06-01'),
(null,	'3',	null,								null),
(null,	'4',	'Teste Ergométrico',				'2025-06-03');

select *  from exames;

insert into receitas (id,idconsulta,dataEmissao,descricao) values
(null,	'1',	'2025-06-06',	'Receita de antibióticos para aliviar os sintomas'),
(null,	'2',	null,			 null),
(null,	'3',	'2025-06-17',	'Receita de antibióticos para tratar infecções '),
(null,	'4',	'2025-05-30',	'Receita de medicamentos para reduzir o colesterol');

select *  from receitas;

insert into medicamentos (id,nome,fabricante,descricao) values
(null,	'1',	'Cetoconazol',		'Cimed',			'Medicamento para o tratamento de infecções causadas por fungos'),
(null,	'2',	null,			 	null,				null),
(null,	'3',	'Clotrimazol',		'Medley',			'Medicamento antifúngico usado para tratar infecções causadas por fungos'),
(null,	'4',	'Estatina',			'Novartis',			'Medicamentos utilizados para reduzir os níveis de colesterol no sangue');

select *  from medicamentos;

insert into itensReceita (id,nome,fabricante,descricao) values
(null,	'1',	'Cetoconazol',		'Cimed',			'Medicamento para o tratamento de infecções causadas por fungos'),
(null,	'2',	null,			 	null,				null),
(null,	'3',	'Clotrimazol',		'Medley',			'Medicamento antifúngico usado para tratar infecções causadas por fungos'),
(null,	'4',	'Estatina',			'Novartis',			'Medicamentos utilizados para reduzir os níveis de colesterol no sangue');

select *  from itensReceita;




