class CreateProcessadors < ActiveRecord::Migration[6.1]
  def change
    create_table :processadors do |t|
      t.string :nome
      t.integer :marca_id
      t.string :soquete
      t.string :velocidade
      t.integer :preco

      t.timestamps
    end
  end
end
