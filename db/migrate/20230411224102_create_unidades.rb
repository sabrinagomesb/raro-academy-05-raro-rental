class CreateUnidades < ActiveRecord::Migration[7.0]
  def change
    create_table :unidades do |t|
      t.string :endereco
      t.string :cnpj

      t.timestamps
    end
  end
end
