class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  has_one :cart
  has_many :orders
  has_many :favorites
  has_many :items, through: :favorites, dependent: :destroy

  # We launch a method after the creation of the user
  after_create :assign_cart
   # The method assign_cart automatically creates a cart assigned to the used
   def assign_cart 
     Cart.create(user_id: self.id)
   end 

  def favorite(item)
    Favorite.find_or_create_by!(item: item, user_id: self.id)
  end

  def unfavorite(item)
    Favorite.where(item: item, user_id: self.id).destroy_all

    item.reload
  end

  def favorited?(item)
    Favorite.find_by(item_id: item.id, user_id: self.id).present?
  end
end
