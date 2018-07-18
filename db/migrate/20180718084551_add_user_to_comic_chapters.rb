class AddUserToComicChapters < ActiveRecord::Migration[5.1]
  def change
    add_reference :comic_chapters, :user, foreign_key: true
  end
end
