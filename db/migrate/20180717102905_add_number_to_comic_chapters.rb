class AddNumberToComicChapters < ActiveRecord::Migration[5.1]
  def change
    add_column :comic_chapters, :number, :integer
  end
end
