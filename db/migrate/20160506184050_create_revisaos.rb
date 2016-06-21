class CreateRevisaos < ActiveRecord::Migration
  def change
    create_table :revisaos do |t|
      t.string :placa
      t.string :km
      t.string :relatorio
      t.string :autorizacao
      t.string :n_rev

      t.timestamps null: false
    end
  end
end
