class ItemSize < ApplicationRecord
	validates :item_id, presence: true
	validates :size_id, presence: true
	belongs_to :item, dependent: :destroy
	belongs_to :size

	def remove_stock(number)
		self.update(stock: self.stock - number)
	end

	def add_stock(number)
	self.update(stock: self.stock + number)
	end

	def find_item
		Item.find_by(id: self.item_id)	
	end

	def find_size
		self.size.name
	end
end
