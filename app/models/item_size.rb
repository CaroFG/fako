class ItemSize < ApplicationRecord
	validates :item_id, presence: true
	validates :size_id, presence: true
end
