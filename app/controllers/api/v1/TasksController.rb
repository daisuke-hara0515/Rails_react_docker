module Api
    module V1
        class TasksController < ApplicationController
            def index
                user = User.find(params[:user_id])
                tasks = user.tasks

                render json: {
                    tasks: tasks
                }, status: :ok
            end
        end
    end
end


