class AddImageartToArts < ActiveRecord::Migration[5.1]
  def up
    add_attachment :arts, :imageart
  end

  def down
    remove_attachment :arts, :imageart
  end
end
