module Api
    module V1
        class UserController < ApplicationController
            def index
                users = User.all
                
                render json: {
                    users: users
                }, status: :ok
            end
        end
    end
end
