class CreateMemoriasRams < ActiveRecord::Migration[6.1]
  def change
    create_table :memorias_rams do |t|
      t.string :nome
      t.integer :capacidade
      t.string :tipo
      t.string :velocidade
      t.integer :preco

      t.timestamps
    end
  end
end
