class CreatePagamentos < ActiveRecord::Migration
  def change
    create_table :pagamento do |t|
      t.string :codigo
      t.string :data
      t.string :hora
      t.string :valor

      t.timestamps null: false
    end
  end
end
