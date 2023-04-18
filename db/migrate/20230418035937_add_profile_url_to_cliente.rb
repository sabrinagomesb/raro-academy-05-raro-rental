class AddProfileUrlToCliente < ActiveRecord::Migration[7.0]
  def change
    add_column :clientes, :profile_url, :string
  end
end
