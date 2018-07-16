class AddComicChapterToComicPages < ActiveRecord::Migration[5.1]
  def change
    add_reference :comic_pages, :comic_chapter, foreign_key: true
  end
end
