class CreateArts < ActiveRecord::Migration[5.1]
  def change

    create_table :arts do |t|
      t.string :name
      t.string :tag1
      t.string :tag2
      t.string :tag3
      t.timestamps
    end
  end
end
