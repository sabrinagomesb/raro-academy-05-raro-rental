class Aluguel < ApplicationRecord
  belongs_to :cliente
  belongs_to :veiculo

  validates_presence_of :data_inicio
  validates_presence_of :data_fim
  validates_presence_of :valor_pago
  validates :data_fim, comparison: { greater_than: :data_inicio }

  # validates :valor_pago, format: { with: /\A\d+(\.\d{0,2})?\z/ }

  def self.ransackable_attributes(auth_object = nil)
    ["data_fim", "data_inicio", "id", "updated_at", "valor_pago", "cliente_id", "veiculo_id"]
  end

  def self.ransackable_associations(auth_object = nil)
    []
  end
end
