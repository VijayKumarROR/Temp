class UsersController < ApplicationController

	def new
 		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			flash[:notice] = "Saved Successsfully"
			redirect_to :controller => "users", :action => "index"
		else
			flash[:error] = "Not Saved"
			render :new
		end
	end

	def index
		@users = User.all
	end

	private
	def user_params
		params.require(:user).permit(:project, :hour, :description, :image)
	end
end
