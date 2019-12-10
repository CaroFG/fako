class Admins::CategoriesController < ApplicationController
	before_action :authenticate_user!
	before_action :check_if_admin

		def index
		@categories = Category.all
	end

	def new
		@category = Category.new
	end

	def create
		@category = Category.new(sex: params[:sex])
		if @category.save
			redirect_to admins_categories_path
			flash[:success] = "La nouvelle catégorie a bien été créée"
		else
			flash[:alert] = "Un problème est survenu, veuillez réessayer"
			render :new
		end
	end

	def edit
		@category = Category.find(params[:id])
	end

	def update
		@category = Category.find(params[:id])
		if @category.update(sex: params[:sex])
			redirect_to admins_categories_path
			flash[:success] = "Les modifications ont bien été enregistrées"
		else
			flash[:alert]= "Un problème est survenu, veuillez réessayer"
			render :edit
		end
		
	end

	def destroy
		@category = Category.find(params[:id])
		if @category.destroy
			redirect_to admins_categories_path
			flash[:success] = "La catégorie a bien été supprimée"
		else
			flash[:alert]= "Un problème est survenu, veuillez réessayer"
			render :edit
		end	
	end

	def check_if_admin
		if current_user.is_admin == false
			flash[:error] = "Vous n'êtes pas un administrateur !"
			redirect_to root_path
		end
	end
end