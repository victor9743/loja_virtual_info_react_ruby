class CreateCompraClientes < ActiveRecord::Migration[6.1]
  def change
    create_table :compra_clientes do |t|
      t.integer :id_usuario
      t.integer :id_processador
      t.integer :id_placa_mae
      t.integer :id_memoria_ram
      t.integer :qtd_memoria
      t.integer :preco_final

      t.timestamps
    end
  end
end
