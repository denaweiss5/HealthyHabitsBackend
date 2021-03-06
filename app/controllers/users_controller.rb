class UsersController < ApplicationController

    protect_from_forgery unless: -> { request.format.json? }

    def index
        users = User.all
        render json: users, except: [:created_at, :updated_at]
    end

    def show
        user = User.find_by_id(params[:id])
        render json: user.to_json(include: [:weight_entries, :meal_entries, :exercise_entries], except: [:created_at, :updated_at])
    end

    def create
        user = User.new(email: params[:email], name: params[:name], password: params[:password])
        
        if user.save 
            render json: user, except: [:created_at, :updated_at]
        else 
            render json: {error: user.errors.full_messages}
        end
    end
    
    def update
        user = User.find(params[:id])

        if user && user.authenticate(params[:password])
        user.update(user_params)

            render json: user
        else 
            render json: {error: user.errors.full_messages}
        end
    end

    def destroy
        user = User.find_by_id(params[:id])
        if user.destroy
            render json: user
        else
            render json: {error: "Something went wrong, cannot delete user."}
        end
    end

    private 

    def user_params
        params.require(:user).permit(:email, :name, :password)
    end

 
end
