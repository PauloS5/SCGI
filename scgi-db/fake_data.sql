/* Database selection */
USE dbScgi;

-- Users
INSERT INTO tbUsers (user_fullname, user_email, user_doc)
VALUES 
('Ana Paula Ribeiro',       'ana.ribeiro@mail.com',         '12345678901'),
('Carlos Eduardo Mendes',   'carlos.mendes@mail.com',       '23456789012'),
('Fernanda Lopes Araujo',   'fernanda.araujo@mail.com',     '34567890123'),
('João Victor Nogueira',    'joao.nogueira@mail.com',       '45678901234'),
('Mariana Souza Lima',      'mariana.lima@mail.com',        '56789012345'),
('Pedro Henrique Alves',    'pedro.alves@mail.com',         '67890123456'),
('Luciana Martins Costa',   'luciana.costa@mail.com',       '78901234567'),
('Tech Solutions LTDA',     'contato@techsolutions.com',    '11222333000199'),
('Comercial Nova Era SA',   'financeiro@novaera.com',       '22333444000188'),
('Alimentos Bom Gosto ME',  'vendas@bomgosto.com',          '33444555000177');
-- SELECT * FROM tbUsers;

-- Transactions
INSERT INTO tbTransactions (transaction_user_id_fk, transaction_value, transaction_description, transaction_category)
VALUES
-- Usuário 1
(1,     2500.00,    'Salário Mensal',               'INC_SALARY'),
(1,     -120.50,    'Supermercado',                 'EXP_FOOD'),
(1,     -60.00,     'Conta de Internet',            'EXP_INVOICE'),
(2,     1800.00,    'Pagamento Freelance',          'INC_FREELANCE'),
(2,     -45.00,     'Transporte Público',           'EXP_TRANSPORT'),
(2,     -90.00,     'Restaurante',                  'EXP_FOOD'),
(3,     300.00,     'Rendimento de Investimento',   'INC_INVESTMENT'),
(3,     -200.00,    'Conta de Energia',             'EXP_INVOICE'),
(3,     -75.00,     'Cinema',                       'EXP_ENTERTAINMENT'),
(4,     150.00,     'Doação Recebida',              'INC_DONATION'),
(4,     -110.00,    'Compras no Mercado',           'EXP_FOOD'),
(4,     -40.00,     'Transporte por App',           'EXP_TRANSPORT'),
(5,     2200.00,    'Salário Mensal',               'INC_SALARY'),
(5,     -300.00,    'Conta de Cartão',              'EXP_INVOICE'),
(5,     -150.00,    'Jantar Fora',                  'EXP_ENTERTAINMENT'),
(6,     900.00,     'Projeto Freelance',            'INC_FREELANCE'),
(6,     -250.00,    'Pagamento de Dívida',          'OTHER'),
(6,     -70.00,     'Almoço',                       'EXP_FOOD'),
(7,     400.00,     'Lucro de Investimento',        'INC_INVESTMENT'),
(7,     -100.00,    'Conta de Água',                'EXP_INVOICE'),
(7,     -55.00,     'Transporte Público',           'EXP_TRANSPORT'),
(8,     3500.00,    'Pagamento de Cliente',         'INC_SALARY'),
(8,     -800.00,    'Compra de Mercadoria',         'EXP_INVOICE'),
(8,     -200.00,    'Alimentação',                  'EXP_FOOD'),
(9,     600.00,     'Trabalho Freelancer',          'INC_FREELANCE'),
(9,     -120.00,    'Combustível',                  'EXP_TRANSPORT'),
(9,     -90.00,     'Streaming e Lazer',            'EXP_ENTERTAINMENT'),
(10,    1000.00,    'Doação Recebida',              'INC_DONATION'),
(10,    -350.00,    'Compras do Mês',               'EXP_FOOD'),
(10,    -180.00,    'Conta de Energia',             'EXP_INVOICE');
-- SELECT * FROM tbTransactions;

-- Goals
INSERT INTO tbGoals (goal_user_id_fk, goal_value, goal_title, goal_description, goal_limit_date)
VALUES
(1, 5000.00,    '1_Reserva de Emergência',      'Criar uma reserva financeira para imprevistos',    '2025-12-31'),
(1, 25000.00,   '1_Comprar Carro',              'Pagar as parcelas do carro',                       '2026-01-30'),
(2, 8000.00,    '2_Viagem de Férias',           'Juntar dinheiro para uma viagem',                  '2025-07-15'),
(3, 3000.00,    '3_Novo Notebook',              'Comprar um notebook para estudos e trabalho',      '2025-09-30'),
(4, 12000.00,   '4_Curso de Especialização',    'Pagar um curso profissionalizante',                '2026-03-31');
SELECT * FROM tbGoals;