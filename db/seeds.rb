require "faker"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# Usuário root
Usuario.create! email: "root@root.com", password: "root@123", nome: "Root", root: true, foto: "https://github.githubassets.com/images/modules/profile/achievements/pull-shark-default.png"

# Usuário não root
Usuario.create! email: "sabrinagbdev@gmail.com", password: "sabrina@123", nome: "Sabrina Gomes", foto: "https://avatars.githubusercontent.com/
u/117469503?v=4"

Usuario.create! email: "paulo@raro.com", password: "paulo@123", nome: "Paulo Fernandes", foto: "https://git.raroacademy.com.br/uploads/-/system/user/avatar/2/avatar.png?width=96"

# db/seeds.rb

# Clientes
30.times do
  Cliente.create! nome: Faker::Name.name, cpf: Faker::Number.number(digits: 11).to_s, cnh: Faker::Number.number(digits: 11).to_s, profile_url: Faker::Avatar.image
end

# Veiculos
carros = {
  "Ford" => ["Ka", "Fiesta", "Focus", "Ecosport", "Ranger", "Fusion", "Mustang"],
  "Fiat" => ["Uno", "Palio", "Siena", "Strada", "Toro", "Mobi", "Argo"],
  "Hyundai" => ["HB20", "HB20S", "HB20X", "Creta", "Tucson", "Elantra", "I30"],
  "Volkswagen" => ["Gol", "Golf", "Polo", "T-Cross", "Tiguan", "Amarok", "Saveiro"],
  "Chevrolet" => ["Onix", "Prisma", "Cruze", "Cobalt", "Tracker", "S10", "Camaro"],
  "Honda" => ["Fit", "City", "Civic", "HR-V", "WR-V", "CR-V", "Accord"],
  "Toyota" => ["Corolla", "Etios", "Yaris", "Hilux", "SW4", "Rav4", "Supra"],
  "Renault" => ["Sandero", "Kwid", "Logan", "Duster", "Captur", "Koleos", "Trafic"],
  "Jeep" => ["Renegade", "Compass", "Grand Cherokee", "Wrangler", "Gladiator", "Cherokee", "Commander"],
  "Nissan" => ["March", "Versa", "Sentra", "Kicks", "Frontier", "Pathfinder", "X-Trail"],
}

cores = ["Vermelho", "Preto", "Branco", "Prata", "Azul", "Amarelo", "Verde", "Cinza"]

30.times do
  marca_aleatoria = carros.keys.sample
  carro_aleatorio = carros[marca_aleatoria].sample
  placa_aleatoria = Faker::Vehicle.license_plate.gsub("-", "").upcase

  Veiculo.create! marca: marca_aleatoria, modelo: carro_aleatorio, placa: placa_aleatoria, chassi: Faker::Number.number(digits: 17).to_s, cor: cores.sample
end

# Aluguel
20.times do
  data_inicio_aleatoria = Date.today + rand(1..10).days
  data_fim_aleatoria = data_inicio_aleatoria + rand(1..20).days
  valor_pago_aleatorio = (data_fim_aleatoria - data_inicio_aleatoria).to_i * rand(50..200)
  Aluguel.create! cliente_id: rand(1..20), veiculo_id: rand(1..20), data_inicio: data_inicio_aleatoria, data_fim: data_fim_aleatoria, valor_pago: valor_pago_aleatorio
end
