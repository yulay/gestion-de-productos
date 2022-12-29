class CreateListados < ActiveRecord::Migration[5.1]
  def change
    create_table :listados do |t|
      t.string :marca
      t.string :modelo
      t.string :codigo
      t.date :fecha_fab
      t.decimal :precio
      t.text :observacion

      t.timestamps
    end
  end
end
