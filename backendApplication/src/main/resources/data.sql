-- Inserir usuários (IDs gerados automaticamente)
INSERT INTO usuario (email, senha, tipo, nome, cpf, telefone, status, nome_proprietario, nome_estabelecimento, cnpj, rua, numero, bairro, cidade, estado, cep) VALUES
('admin@email.com', '$2a$10$N.zmdr9k7uOCQb376NoUnuTJ8iAt6Z5EHsM8lE9lBOsl7iKTVKIUi', 'ADMINISTRADOR', 'Administrador', '123.456.789-00', '(11) 99999-9999', 'APROVADO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('cliente@email.com', '$2a$10$N.zmdr9k7uOCQb376NoUnuTJ8iAt6Z5EHsM8lE9lBOsl7iKTVKIUi', 'CLIENTE', 'João Silva', '987.654.321-00', '(11) 98888-8888', 'APROVADO', NULL, NULL, NULL, 'Rua das Palmeiras', 101, 'Centro', 'São Paulo', NULL, '01234-567'),
('estabelecimento@email.com', '$2a$10$N.zmdr9k7uOCQb376NoUnuTJ8iAt6Z5EHsM8lE9lBOsl7iKTVKIUi', 'ESTABELECIMENTO', NULL, NULL, '(11) 97777-7777', 'APROVADO', 'Carlos Oliveira', 'Barbearia Estilo', '12.345.678/0001-95', 'Rua das Flores', 123, 'Centro', 'São Paulo', NULL, '01234-567'),
('novo.admin@email.com', '$2a$10$N.zmdr9k7uOCQb376NoUnuTJ8iAt6Z5EHsM8lE9lBOsl7iKTVKIUi', 'ADMINISTRADOR', 'Maria Santos', '999.999.999-99', '(11) 94444-4444', 'APROVADO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('elite@email.com', '$2a$10$N.zmdr9k7uOCQb376NoUnuTJ8iAt6Z5EHsM8lE9lBOsl7iKTVKIUi', 'ESTABELECIMENTO', NULL, NULL, '(11) 92222-3333', 'APROVADO', 'Eduardo Lima', 'Barbearia Elite', '23.456.789/0001-10', 'Av. Paulista', 1000, 'Bela Vista', 'São Paulo', NULL, '01310-100'),
('vintage@email.com', '$2a$10$N.zmdr9k7uOCQb376NoUnuTJ8iAt6Z5EHsM8lE9lBOsl7iKTVKIUi', 'ESTABELECIMENTO', NULL, NULL, '(11) 93333-4444', 'APROVADO', 'Roberto Souza', 'Vintage Barber', '34.567.890/0001-20', 'Rua Augusta', 500, 'Consolação', 'São Paulo', NULL, '01305-000'),
('modern@email.com', '$2a$10$N.zmdr9k7uOCQb376NoUnuTJ8iAt6Z5EHsM8lE9lBOsl7iKTVKIUi', 'ESTABELECIMENTO', NULL, NULL, '(11) 94444-5555', 'APROVADO', 'Lucas Martins', 'Modern Barber', '45.678.901/0001-30', 'Rua Oscar Freire', 250, 'Jardins', 'São Paulo', NULL, '01426-001'),
('cliente2@email.com', '$2a$10$N.zmdr9k7uOCQb376NoUnuTJ8iAt6Z5EHsM8lE9lBOsl7iKTVKIUi', 'CLIENTE', 'Ana Paula', '888.777.666-55', '(11) 91111-2222', 'APROVADO', NULL, NULL, NULL, 'Rua Bela Vista', 45, 'Bela Vista', 'São Paulo', NULL, '01311-200');

-- Inserir serviços
INSERT INTO servico (descricao, preco, duracao_minutos, tipo, estabelecimento_id) VALUES
('Corte de Cabelo Tradicional', 50.00, 30, 'CORTE_DE_CABELO', 3),
('Barba Completa', 30.00, 20, 'BARBA', 3),
('Hidratação Profunda', 80.00, 45, 'HIDRATACAO', 3),
('Luzes Californianas', 150.00, 120, 'LUZES', 3),
('Design de Sobrancelha', 25.00, 15, 'SOBRANCELHA', 3);

-- Inserir profissionais
INSERT INTO profissional (nome, email, telefone, estabelecimento_id) VALUES
('João Silva', 'joao@email.com', '11966666666', 3),
('Maria Santos', 'maria@email.com', '11955555555', 3);

-- Inserir horários de funcionamento
INSERT INTO horarios_funcionamento (dia_semana, horario_abertura, horario_fechamento, estabelecimento_id) VALUES
('SEGUNDA', '09:00', '18:00', 3),
('TERCA', '09:00', '18:00', 3);

-- Inserir agendamentos
INSERT INTO agendamento (data_hora, status, cliente_id, estabelecimento_id) VALUES
('2024-05-27 10:00:00', 'AGENDADA', 2, 3),
('2024-05-28 14:00:00', 'AGENDADA', 2, 3);

-- Inserir serviços dos agendamentos
INSERT INTO agendamento_servico (agendamento_id, servico_id) VALUES
(1, 1),
(1, 2);

-- Inserir avaliações
INSERT INTO avaliacao (nota, comentario, data_avaliacao, agendamento_id, estabelecimento_id) VALUES
(5, 'Excelente atendimento! Profissionais muito atenciosos.', '2024-05-27 11:00:00', 1, 3),
(4, 'Muito bom atendimento, ambiente agradável!', '2024-05-28 15:00:00', 2, 3);
