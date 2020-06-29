class ChangeKilometerFromCars < ActiveRecord::Migration[6.0]
  def change
     change_column :cars, :kilometer, 'double precision USING CAST(kilometer AS double precision)'
  end
end
