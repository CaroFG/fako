class ItemSize < ApplicationRecord
	validates :item_id, presence: true
	validates :size_id, presence: true
	belongs_to :item
	belongs_to :size

	def remove_stock(number)
		self.update(stock: self.stock - number)
	end

	def add_stock(number)
	self.update(stock: self.stock + number)
	end
end
