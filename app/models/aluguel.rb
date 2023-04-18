class Aluguel < ApplicationRecord
  belongs_to :cliente
  belongs_to :veiculo

  validates_presence_of :data_inicio
  validates_presence_of :data_fim
  validates_presence_of :valor_pago
  validates :data_fim, comparison: { greater_than: :data_inicio }
end
