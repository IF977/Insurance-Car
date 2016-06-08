class CreateRevisaos < ActiveRecord::Migration
  def change
    create_table :revisao do |t|
      t.string :codigo
      t.string :data
      t.string :hora
      t.string :km
      t.string :relatorio
      t.boolean :autorizacao

      t.timestamps null: false
    end
  end
end
