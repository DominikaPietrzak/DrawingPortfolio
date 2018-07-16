class CreateComicChapters < ActiveRecord::Migration[5.1]
  def change
    create_table :comic_chapters do |t|
      t.string :title
      t.timestamps
    end
  end
end
