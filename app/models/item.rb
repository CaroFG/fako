class Item < ApplicationRecord
	belongs_to :type
	belongs_to :category

	has_many :cart_items
	has_many :carts, through: :cart_items
	has_many :order_items
	has_many :orders, through: :order_items
end
