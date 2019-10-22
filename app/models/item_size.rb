class ItemSize < ApplicationRecord
	validates :item_id, presence: true
	validates :size_id, presence: true
	belongs_to :item
	belongs_to :size
end
