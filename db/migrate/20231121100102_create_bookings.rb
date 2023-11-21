class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.decimal :price
      t.date :duration
      t.references :user, null: false, foreign_key: true
      t.references :manga, null: false, foreign_key: true
      t.boolean :status

      t.timestamps
    end
  end
end
