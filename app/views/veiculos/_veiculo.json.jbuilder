json.extract! veiculo, :id, :marca, :modelo, :placa, :chassi, :cor, :created_at, :updated_at
json.url veiculo_url(veiculo, format: :json)
