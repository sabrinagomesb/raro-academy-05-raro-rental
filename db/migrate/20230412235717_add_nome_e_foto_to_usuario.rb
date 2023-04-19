class AddNomeEFotoToUsuario < ActiveRecord::Migration[7.0]
  def change
    add_column :usuarios, :nome, :string
    add_column :usuarios, :foto, :string, defult: "https://github.githubassets.com/images/modules/profile/achievements/pull-shark-default.png"
  end
end
