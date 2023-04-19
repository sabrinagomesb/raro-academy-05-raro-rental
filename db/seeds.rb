require "faker"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# Usuário root
Usuario.create! email: "root@root.com", password: "root@123", nome: "Root", root: true, foto: "https://github.githubassets.com/images/modules/profile/achievements/pull-shark-default.png"

# Usuário não root
Usuario.create! email: "sabrinagbdev@gmail.com", password: "sabrina@123", nome: "Sabrina Gomes", foto: "https://avatars.githubusercontent.com/
u/117469503?v=4"

# db/seeds.rb

# Clientes
10.times do
  Cliente.create! nome: Faker::Name.name, cpf: Faker::Number.number(digits: 11).to_s, cnh: Faker::Number.number(digits: 11).to_s, profile_url: Faker::Avatar.image
end

# Veiculos
Veiculo.create! marca: "Ford", modelo: "Ka", placa: "KAR1234", chassi: "12345678901234560", cor: "Vermelho"
Veiculo.create! marca: "Fiat", modelo: "Uno", placa: "CAR4321", chassi: "14445678901234567", cor: "Prata"
Veiculo.create! marca: "Fiat", modelo: "Mobi", placa: "MOB0101", chassi: "33345678901234567", cor: "Branco"
Veiculo.create! marca: "Fiat", modelo: "Siena", placa: "BBB1458", chassi: "22345678901234567", cor: "Prata"
Veiculo.create! marca: "Fiat", modelo: "Argo", placa: "ABC9999", chassi: "55345678901234567", cor: "Branco"
Veiculo.create! marca: "Hyundai", modelo: "HB20", placa: "RAR0000", chassi: "99345678901234567", cor: "Vermelho"

# Aluguel
Aluguel.create! cliente_id: 1, veiculo_id: 2, data_inicio: Date.today, data_fim: Date.today + 4.days, valor_pago: 150
Aluguel.create! cliente_id: 2, veiculo_id: 3, data_inicio: Date.today, data_fim: Date.today + 5.days, valor_pago: 200
Aluguel.create! cliente_id: 3, veiculo_id: 4, data_inicio: Date.today, data_fim: Date.today + 3.days, valor_pago: 300
Aluguel.create! cliente_id: 4, veiculo_id: 5, data_inicio: Date.today, data_fim: Date.today + 7.days, valor_pago: 450
Aluguel.create! cliente_id: 5, veiculo_id: 6, data_inicio: Date.today, data_fim: Date.today + 7.days, valor_pago: 750
Aluguel.create! cliente_id: 6, veiculo_id: 1, data_inicio: Date.today, data_fim: Date.today + 2.days, valor_pago: 570
