# ADMIN LOCADORAS DE VEÍCULOS

Projeto prático para aulas dos fundamentos de uma aplicação ruby on rails.

## Setup

Antes de iniciar a aplicação, recomenda-se a execução da seguinte sequência de comandos:

```bash
bundle install
yarn install
rails db:create
rails db:migrate
rails db:seed
```

Para iniciar o servidor, recomenda-se a utilização do comando `./bin/dev`, pois ele garante os assets serão todos devidamente processados.

# Comandos utilizados em aula

```bash
rails new admin-locadora-veiculos -c tailwind -j esbuild
cd admin-locadora-veiculos
./bin/dev
rails g scaffold Veiculo marca modelo placa chassi cor
rails g scaffold Cliente nome cpf cnh
rails generate scaffold Aluguel cliente:references veiculo:references
rails db:migrate
```

# Adiciona uma dependência do tailwind no frontend

```bash
yarn add @tailwindcss/forms
```
