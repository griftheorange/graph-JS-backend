class UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find_by id: params[:id]
        render json: @user
    end

    def create
        @user = User.create(p)
        render json: @user
    end

    private

    def p
        params.permit(:username, :password)
    end
end
