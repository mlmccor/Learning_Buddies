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

    def update 
        user = User.find_by(id: params[:id])
        user.update(user_params)

        respond_to do |format|
            format.json  { render :json => @user, include: "***" }
        end
    end

    def destroy
        user = User.find_by(id: params[:id])
        user.delete

        respond_to do |format|
            format.json  { render :json => {Success: "Deleted Successfully"} }
        end
    end 

    def user_params
        params.require(:user).permit(:name, :gender, :age, :bio, :skills => [])
        # params.require(:user).permit(:name, :gender, :age, :bio)
    end

end