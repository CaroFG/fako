class CreateItemSizes < ActiveRecord::Migration[5.2]
  def change
    create_table :item_sizes do |t|
      t.integer :stock
			t.belongs_to :size, index: true
    	t.belongs_to :item, index: true

      t.timestamps
    end
  end
end
