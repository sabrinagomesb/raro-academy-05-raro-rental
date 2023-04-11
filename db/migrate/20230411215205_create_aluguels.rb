class CreateAluguels < ActiveRecord::Migration[7.0]
  def change
    create_table :aluguels do |t|
      t.references :cliente, null: false, foreign_key: true
      t.references :veiculo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
