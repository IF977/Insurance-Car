class CreateRevisaos < ActiveRecord::Migration
  def change
    create_table :revisaos do |t|
      t.string :codigo
      t.string :data
      t.string :hora
      t.string :km
      t.string :relatorio
      t.int :autorizacao

      t.timestamps null: false
    end
  end
end
