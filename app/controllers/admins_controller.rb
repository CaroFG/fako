class AdminsController < ApplicationController
	 # This controller manages the ads validation.
	before_action :authenticate_user!
	before_action :check_if_admin

	def index
    @users = User.all

    # We stock the number of users in a variable 
    @total_users_count = @users.count
  end

  def check_if_admin
  	if current_user.is_admin == false
  		flash[:error] = "Vous n'êtes pas un administrateur !"
  		redirect_to root_path
  	end
  end
end
