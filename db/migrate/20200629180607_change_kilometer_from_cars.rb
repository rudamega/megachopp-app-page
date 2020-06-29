class ChangeKilometerFromCars < ActiveRecord::Migration[6.0]
  def change
     change_column :cars, :kilometer, :float, precision: 10
  end
end
