class Api::V1::UsersController < ApplicationController
    
    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find(params[:id])
        render json: user
    end
    
    def create
      @user = User.create(username: params[:username], password: params[:password])
      if @user.valid?
        render json: @user, status: :created
      else
        render json: { error: 'failed to create user' }, status: :not_acceptable
      end
    end
   

end