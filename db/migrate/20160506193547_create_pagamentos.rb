class CreatePagamentos < ActiveRecord::Migration
  def change
    create_table :pagamentos do |t|
      t.string :placa
      t.string :valor
      t.string :cod

      t.timestamps null: false
    end
  end
end
