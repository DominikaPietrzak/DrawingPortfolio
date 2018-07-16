class AddUserToComicBooks < ActiveRecord::Migration[5.1]
  def change
    add_reference :comic_books, :user, foreign_key: true
  end
end
