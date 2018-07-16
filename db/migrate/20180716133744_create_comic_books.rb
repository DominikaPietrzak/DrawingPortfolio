class CreateComicBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :comic_books do |t|
      t.string :title
      t.timestamps
    end
  end
end
