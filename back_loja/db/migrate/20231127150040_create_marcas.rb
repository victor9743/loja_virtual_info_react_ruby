class CreateMarcas < ActiveRecord::Migration[6.1]
  def change
    create_table :marcas do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
