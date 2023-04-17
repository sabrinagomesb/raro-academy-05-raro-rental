class Veiculo < ApplicationRecord
  def to_s
    "#{modelo} #{placa}"
  end

  validates_presence_of :marca
  validates_presence_of :modelo
  validates_presence_of :cor
  validates :placa, length: { in: 7..7 }
  validates :chassi, length: { in: 17..17 }
end
