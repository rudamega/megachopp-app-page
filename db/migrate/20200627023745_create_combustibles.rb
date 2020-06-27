class CreateCombustibles < ActiveRecord::Migration[6.0]
  def change
    create_table :combustibles do |t|
      t.string :date
      t.float :liters
      t.float :total_price
      t.float :kilometers
      t.float :liter_price
      t.float :consumo_promedio
      t.references :car, null: false, foreign_key: true

      t.timestamps
    end
  end
end
