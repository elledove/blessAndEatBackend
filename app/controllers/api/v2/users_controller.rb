class Api::V2::UsersController < ApplicationController
    include CurrentUserConcern


    def index
        users = User.all
        render json: users
    end


end