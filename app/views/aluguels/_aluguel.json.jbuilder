json.extract! aluguel, :id, :cliente_id, :veiculo_id, :data_inicio, :data_fim, :valor_pago, :created_at, :updated_at
json.url aluguel_url(aluguel, format: :json)
