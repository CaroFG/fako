class UsersController < ApplicationController

	def create
		super
  	current_or_guest_user
	end

	def show
		@user = User.find(params[:id])
	end
end
