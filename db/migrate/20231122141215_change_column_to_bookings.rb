class ChangeColumnToBookings < ActiveRecord::Migration[7.1]
  def change
    rename_column :bookings, :duration, :start_date
    add_column :bookings, :end_date, :date
  end
end
