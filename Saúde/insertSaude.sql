insert into pacientes (id, nome, dataNascimento, sexo, telefone, endereco, estado, email, cpf, dataCadastro) values
(null,	'Mariano Silva', 	'1985-06-15', 'Masculino', 	'(16) 91234-5678', 'Rua das Flores, 123', 'SP', 'marianosilva@email.com',  '123.456.789-00', now()),
(null,	'Bianca Oliveira', 	'1990-03-22', 'Feminino', 	'(21) 99876-5432', 'Av. Brasil, 456', 	  'RJ', 'biaoliveira@email.com',   '987.654.321-00', now()),
(null,	'Danilo Souza', 	'1975-11-05', 'Masculino', 	'(31) 91111-2222', 'Rua Minas, 789',      'MG', 'danilosouza@email.com',   '456.789.123-00', now()),
(null,	'Fernanda Lima', 	'2000-08-30', 'Feminino', 	'(41) 93333-4444', 'Rua Paraná, 321',     'PR', 'nandalima@email.com',     '321.654.987-00', now());

insert into medico (id, nome, especialidade, dataNascimento, telefone, endereco, cidade, estado, email, crm) values
(null,  'Dra. Marcela Costa', 'Cardiologia',  '1978-03-22', '(16) 99876-5432', 'Av. Paulista, 1000',       'São Joaquim da Barra',  'SP', 'marcela@hospital.com', 123456),
(null,	'Dr. Samuel Martins', 'Ortopedia',    '1982-07-10', '(21) 91234-5678', 'Rua das Laranjeiras, 200', 'Rio de Janeiro',        'RJ', 'pedro@hospital.com', 234567),
(null,	'Dra. Luiza Ramos',   'Dermatologia', '1985-12-01', '(31) 95555-6666', 'Av. Afonso Pena, 300',     'Belo Horizonte',        'MG', 'luiza@hospital.com', 345678),
(null,	'Dr. Rafael Torres',  'Pediatria',    '1990-04-18', '(41) 97777-8888', 'Rua XV de Novembro, 400',  'Curitiba',              'PR', 'rafael@hospital.com', 456789);

insert into consulta (id, idpaciente, idmedico, dataConsulta, hora, descricao, statusConsulta) values
(1, 1, '2025-09-25', '10:30:00', 'Consulta de rotina', 'Agendada'),
(2, 2, '2025-09-26', '14:00:00', 'Dor no joelho', 'Realizada'),
(3, 3, '2025-09-27', '09:00:00', 'Avaliação de pele', 'Cancelada'),
(4, 4, '2025-09-28', '11:15:00', 'Consulta pediátrica', 'Agendada');

insert into exames (id, idconsulta, tipoExame, dataExame) values
(1, 'Hemograma completo', '2025-09-26'),
(2, 'Raio-X de joelho', '2025-09-26'),
(3, 'Biópsia de pele', '2025-09-27'),
(4, 'Exame de urina', '2025-09-28');

insert into receitas (id, idconsulta, dataEmissao, descricao) values
(1, '2025-09-25', 'Losartana 50mg - 1x ao dia'),
(2, '2025-09-26', 'Ibuprofeno 400mg - 2x ao dia'),
(3, '2025-09-27', 'Pomada dermatológica - aplicar 2x ao dia'),
(4, '2025-09-28', 'Paracetamol infantil - 3x ao dia');

insert into medicamentos (id, nome, fabricante, descricao) values
('Losartana', 'Medley', 'Antihipertensivo'),
('Ibuprofeno', 'Neo Química', 'Anti-inflamatório'),
('Pomada Dermo', 'Aché', 'Tratamento dermatológico'),
('Paracetamol Infantil', 'EMS', 'Analgésico pediátrico');

insert into itensReceita (id, idreceita, idmedicamento, qtde, posologia) values
(1, 1, 30.00, 1),
(2, 2, 20.00, 2),
(3, 3, 15.00, 2),
(4, 4, 10.00, 3);

insert into prontuarioEletronico (id, idpaciente, datacriacao, dadosComplementares) values
(1, CURDATE(), 'Hipertensão controlada'),
(2, CURDATE(), 'Histórico de lesões articulares'),
(3, CURDATE(), 'Alergia a cosméticos'),
(4, CURDATE(), 'Acompanhamento pediátrico');

insert into internacao (id, idpaciente, idmedico, datainternacao, dataalta, motivo, leito) values
(1, 1, '2025-09-20', '2025-09-24', 'Cirurgia cardíaca', 101),
(2, 2, '2025-09-21', '2025-09-23', 'Fratura no joelho', 102),
(3, 3, '2025-09-22', '2025-09-25', 'Tratamento dermatológico', 103),
(4, 4, '2025-09-23', '2025-09-26', 'Infecção respiratória', 104);