class AddChapterCoverToComicChapters < ActiveRecord::Migration[5.1]
  def up
    add_attachment :comic_chapters, :chaptercover
  end

  def down
    remove_attachment :comic_chapters, :chaptercover
  end
end
