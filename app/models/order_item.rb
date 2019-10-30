class OrderItem < ApplicationRecord
	belongs_to :order 
	belongs_to :item_size

end
