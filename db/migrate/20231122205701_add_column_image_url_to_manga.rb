class AddColumnImageUrlToManga < ActiveRecord::Migration[7.1]
  def change
    add_column :mangas, :image_url, :string
  end
end
