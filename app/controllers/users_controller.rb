class UsersController < ApplicationController
    # before_action :authenticate_user!
    
    def show
        @user = User.find_by(id: params[:id])
        if !@user
            render :json => {error: "User not found"}
        end 
        
        # if !user_signed_in?
        #     render :json => {error: "Must be logged in!"}
        # end 

        respond_to do |format|
            format.json  { render :json => @user, include: "**" }
        end
    end

    def index
        @users = User.all

        respond_to do |format|
            format.json  { render :json => @users, include: "**" }
        end
    end

end