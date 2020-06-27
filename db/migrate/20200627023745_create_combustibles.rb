class CreateCombustibles < ActiveRecord::Migration[6.0]
  def change
    create_table :combustibles do |t|
      t.string :date
      t.string :liters
      t.string :total_price
      t.string :kilometers
      t.string :liter_price
      t.string :consumo_promedio
      t.references :car, null: false, foreign_key: true

      t.timestamps
    end
  end
end
