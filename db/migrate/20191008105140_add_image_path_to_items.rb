class AddImagePathToItems < ActiveRecord::Migration[5.2]
  def change
  	add_column :items, :image_path, :string
  end
end
