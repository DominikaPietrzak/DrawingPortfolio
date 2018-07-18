class AddComiccoverToComicBooks < ActiveRecord::Migration[5.1]

  def up
    add_attachment :comic_books, :comiccover
  end

  def down
    remove_attachment :comic_books, :comiccover
  end

end
