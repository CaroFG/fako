class Admins::PicturesController < ApplicationController
	before_action :authenticate_user!
	before_action :check_if_admin

	def create
    @item = Item.find(params[:item_id])
    @user.picture.attach(params[:picture])
  end

	def check_if_admin
		if current_user.is_admin == false
			flash[:error] = "Vous n'êtes pas un administrateur !"
			redirect_to root_path
		end
	end


end
