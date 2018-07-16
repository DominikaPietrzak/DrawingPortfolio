class CreateChapters < ActiveRecord::Migration[5.1]
  def change
    create_table :chapters do |t|
      t.references :comics, foreign_key: true
      t.integer :number
      t.string :title
      t.timestamps
    end
  end
end
