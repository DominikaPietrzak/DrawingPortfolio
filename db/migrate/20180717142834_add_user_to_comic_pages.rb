class AddUserToComicPages < ActiveRecord::Migration[5.1]
  def change
    add_reference :comic_pages, :user, foreign_key: true
  end
end
