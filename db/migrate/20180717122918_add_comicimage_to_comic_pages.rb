class AddComicimageToComicPages < ActiveRecord::Migration[5.1]
  def up
    add_attachment :comic_pages, :comicimage
  end

  def down
    remove_attachment :comic_pages, :comicimage
  end
end
