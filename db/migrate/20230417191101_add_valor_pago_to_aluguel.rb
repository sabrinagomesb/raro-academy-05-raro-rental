class AddValorPagoToAluguel < ActiveRecord::Migration[7.0]
  def change
    add_column :aluguels, :valor_pago, :float
  end
end
