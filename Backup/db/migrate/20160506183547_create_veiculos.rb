class CreateVeiculos < ActiveRecord::Migration
  def change
    create_table :carro do |t|
      t.string :placa
      t.string :marca
      t.string :modelo
      t.string :cliente

      t.timestamps null: false
    end
  end
end
