class ChangeKilometerFromCars < ActiveRecord::Migration[6.0]
  def change
     change_column :cars, :kilometer, "USING kilometer::double precision"
  end
end
