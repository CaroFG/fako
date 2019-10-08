class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.decimal :price
      t.text :description
    	t.belongs_to :type, index: true
			t.belongs_to :category, index: true

      t.timestamps
    end
  end
end
