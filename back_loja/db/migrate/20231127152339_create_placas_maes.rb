class CreatePlacasMaes < ActiveRecord::Migration[6.1]
  def change
    create_table :placas_maes do |t|
      t.string :nome
      t.integer :marca_id
      t.string :soquete
      t.string :velocidade
      t.integer :compatibilidade_id
      t.integer :capacidade_mem_max
      t.integer :preco

      t.timestamps
    end
  end
end
