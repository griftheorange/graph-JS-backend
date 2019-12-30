class UsersController < ApplicationController
    def index
        @users = {:users => User.all.map{|user|{username: user.username, password: user.password}}}
        render json: @users.to_json
    end

    def show
        @user = User.find_by id: params[:id]
        @user = {username: @user.username}
        render json: @user.to_json
    end
end
