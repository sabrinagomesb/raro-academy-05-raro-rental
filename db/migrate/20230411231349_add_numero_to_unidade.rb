class AddNumeroToUnidade < ActiveRecord::Migration[7.0]
  def change
    add_column :unidades, :numero, :text, null: false, default: '100'
  end

  def down 
    drop_table :table_name
    # cuidar de constraints anterioes.
  end
end
