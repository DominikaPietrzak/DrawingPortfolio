class AddComicBookToComicChapters < ActiveRecord::Migration[5.1]
  def change
    add_reference :comic_chapters, :comic_book, foreign_key: true
  end
end
