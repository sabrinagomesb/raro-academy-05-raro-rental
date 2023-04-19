class AddRootToUsuario < ActiveRecord::Migration[7.0]
  def change
    add_column :usuarios, :root, :boolean, null: false, default: false
  end
end
