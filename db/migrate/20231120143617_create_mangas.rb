class CreateMangas < ActiveRecord::Migration[7.1]
  def change
    create_table :mangas do |t|
      t.string :title
      t.text :synopsis
      t.string :author
      t.string :category
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
