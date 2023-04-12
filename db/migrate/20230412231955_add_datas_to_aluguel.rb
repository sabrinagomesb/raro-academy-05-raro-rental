class AddDatasToAluguel < ActiveRecord::Migration[7.0]
  def change
    add_column :aluguels, :data_inicio, :date
    add_column :aluguels, :data_fim, :date
  end
end
