class CreateComicsPages < ActiveRecord::Migration[5.1]
  def change
    create_table :comics_pages do |t|
      t.references :chapter, foreign_key: true
      t.integer :number
      t.string :tag1
      t.string :tag2
      t.string :tag3
      t.timestamps
    end
  end
end
