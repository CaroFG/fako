class Favorite < ApplicationRecord
  belongs_to :user, counter_cache: true
  belongs_to :item
end
