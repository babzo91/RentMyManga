class ChangePriceToFloat < ActiveRecord::Migration[7.1]
  def change
    change_column :bookings, :price, :float
  end
end
