class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
    	t.belongs_to :order, index: true
    	t.belongs_to :item_size, index: true
      t.timestamps
    end
  end
end
