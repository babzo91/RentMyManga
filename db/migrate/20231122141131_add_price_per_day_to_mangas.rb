class AddPricePerDayToMangas < ActiveRecord::Migration[7.1]
  def change
    add_column :mangas, :price_per_day, :float
  end
end
