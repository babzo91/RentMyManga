class AddPhotoColumnToManga < ActiveRecord::Migration[7.1]
  def change
    add_column :mangas, :photo, :string
  end
end
