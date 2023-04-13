class AddNomeEFotoToUsuario < ActiveRecord::Migration[7.0]
  def change
    add_column :usuarios, :nome, :string
    add_column :usuarios, :foto, :string
  end
end
