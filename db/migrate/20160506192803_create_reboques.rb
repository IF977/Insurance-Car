class CreateReboques < ActiveRecord::Migration
  def change
    create_table :reboques do |t|
      t.string :codigo
      t.string :data
      t.string :hora
      t.string :km
      t.string :destino
      t.string :origem
      t.int :distancia

      t.timestamps null: false
    end
  end
end
