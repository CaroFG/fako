class FavoritesController < ApplicationController
  before_action :find_item!, only: [:create, :destroy]

  def index
  	@favorites = current_or_guest_user.items
  end

  def create
    current_or_guest_user.favorite(@item)
  end

  def destroy
    current_or_guest_user.unfavorite(@item)
  end

  private

  def find_item!
    @item = Item.find(params[:item_id])
  end
end
