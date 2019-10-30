class UsersController < ApplicationController
	before_action :dont_show
	before_action :authenticate_user!
	
	def show
		@user = User.find(params[:id])
		@orders = @user.orders
		if @orders.count > 0
			@order = @orders.last
			@item_sizes = @order.item_sizes
		end
	end

	def dont_show
		@user = User.find(params[:id])
		if (@user != current_user) 
			redirect_to root_path flash[:alert] = "Information confidentielle"
		end
	end

	def edit
		@user = User.find(params[:id])
	end

		def update
		@user = User.find(params[:id])
		if current_user == @user
			if @user.update(first_name: params[:first_name], last_name: params[:last_name], address: params[:address])
				redirect_to user_path 
				flash[:success] = "Votre profil a été édité avec succès"
			else 
				flash[:alert] = "Un problème est survenu, veuillez reessayer"
				render :edit
			end
		else
			redirect_to root_path, flash[:notice] = "Vous n'avez pas accès à ce profil !"
		end	
	end
end
