# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# Usuários root
Usuario.create! email: "sabrinagbdev@gmail.com", password: "sabrina@123", nome: "Sabrina Gomes", foto: "https://avatars.githubusercontent.com/
u/117469503?v=4"

Usuario.create! email: "root@root.com", password: "root@123", nome: "Root", foto: "https://github.githubassets.com/images/modules/profile/achievements/pull-shark-default.png"

# Clientes
Cliente.create! nome: "João Francisco", cpf: "123456789-00", cnh: "11122233300"
Cliente.create! nome: "Maria Clara Fernanda", cpf: "147258369-00", cnh: "41452563600"
Cliente.create! nome: "Babi Gomes", cpf: "369369369-00", cnh: "747858969-00"
Cliente.create! nome: "Joana Carla Silveira", cpf: "321654987-00", cnh: "88899988811"
Cliente.create! nome: "Samantha Jones", cpf: "123456789-00", cnh: "11122233300"
Cliente.create! nome: "Marcos Pedro Santana", cpf: "147258369-00", cnh: "41452563600"
Cliente.create! nome: "Pedro Pinheiro", cpf: "369369369-00", cnh: "747858969-00"
Cliente.create! nome: "Sara Oliveira Garcia Marques", cpf: "321654987-00", cnh: "88899988811"

# Veiculos
Veiculo.create! marca: "Ford", modelo: "Ka", placa: "KAR1234", chassi: "12345678901234567890", cor: "Vermelho"
Veiculo.create! marca: "Fiat", modelo: "Uno", placa: "CAR4321", chassi: "12345678901234567890", cor: "Prata"
Veiculo.create! marca: "Fiat", modelo: "Mobi", placa: "MOB0101", chassi: "11122233344455566677", cor: "Branco"
Veiculo.create! marca: "Fiat", modelo: "Siena", placa: "BBB1458", chassi: "11124567890566677", cor: "Prata"
Veiculo.create! marca: "Fiat", modelo: "Argo", placa: "ABC9999", chassi: "11122233344455566677", cor: "Branco"
Veiculo.create! marca: "Hyundai", modelo: "HB20", placa: "RAR0000", chassi: "12345678901234567890", cor: "Vermelho"

# Aluguel
Aluguel.create! cliente_id: 1, veiculo_id: 2, data_inicio: Date.today, data_fim: Date.today + 4.days
Aluguel.create! cliente_id: 2, veiculo_id: 3, data_inicio: Date.today, data_fim: Date.today + 5.days
Aluguel.create! cliente_id: 3, veiculo_id: 4, data_inicio: Date.today, data_fim: Date.today + 3.days
Aluguel.create! cliente_id: 4, veiculo_id: 5, data_inicio: Date.today, data_fim: Date.today + 7.days
Aluguel.create! cliente_id: 5, veiculo_id: 6, data_inicio: Date.today, data_fim: Date.today + 7.days
Aluguel.create! cliente_id: 6, veiculo_id: 1, data_inicio: Date.today, data_fim: Date.today + 2.days
