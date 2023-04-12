class Veiculo < ApplicationRecord
  def to_s
    "#{modelo} #{placa}"
  end
end
