class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :name
      t.float :kilometer
      t.string :mantenimiento

      t.timestamps
    end
  end
end
