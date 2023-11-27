class CreateUsuarios < ActiveRecord::Migration[6.1]
  def change
    create_table :usuarios do |t|
      t.string :nome_completo
      t.string :usuario
      t.string :senha
      t.string :endereco_entrega
      t.string :telefone

      t.timestamps
    end
  end
end
