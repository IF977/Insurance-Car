class CreatePagamentos < ActiveRecord::Migration
  def change
    create_table :pagamentos do |t|
      t.string :codigo
      t.string :data
      t.string :hora
      t.string :valor

      t.timestamps null: false
    end
  end
end
