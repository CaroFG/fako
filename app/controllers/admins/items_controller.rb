class Admins::ItemsController < ApplicationController
	before_action :authenticate_user!
	before_action :check_if_admin

	def index
		@items = Item.all
	end

	def check_if_admin
		if current_user.is_admin == false
			flash[:error] = "Vous n'êtes pas un administrateur !"
			redirect_to root_path
		end
	end
end