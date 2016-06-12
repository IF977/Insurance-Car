class CreateVeiculos < ActiveRecord::Migration
  def change
    create_table :carros do |t|
      t.string :placa
      t.string :marca
      t.string :modelo
      t.string :clientes

      t.timestamps null: false
    end
  end
end
