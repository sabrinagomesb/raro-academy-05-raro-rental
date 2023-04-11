class CreateVeiculos < ActiveRecord::Migration[7.0]
  def change
    create_table :veiculos do |t|
      t.string :marca
      t.string :modelo
      t.string :placa
      t.string :chassi
      t.string :cor

      t.timestamps
    end
  end
end
