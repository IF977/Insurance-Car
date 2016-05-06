class CreateVeiculos < ActiveRecord::Migration
  def change
    create_table :veiculos do |t|
      t.string :placa
      t.string :marca
      t.string :modelo

      t.timestamps null: false
    end
  end
end
