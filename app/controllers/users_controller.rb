class UsersController < ApplicationController
    before_action :authenticate, only:[:me]
    def index
        users = User.all
        render json: users
    end
    def show
        user= User.find(params[:id])
        render json: user
    end

    def login
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            token = JWT.encode({user_id: user.id}, "my_secret", "HS256")
            render json: {user: UserSerializer.new(user), token: token}
        else
            render json: {errors: ["Invalid username or password"]}, status: :unauthorized
        end
    end
    #leave multiple messages in errors

    def signup
        user = User.create(user_params)
        if user.valid?
            token = JWT.encode({user_id: user.id}, "my_secret", "HS256")
            render json: {user: UserSerializer.new(user), token: token}, status: :created
        else
            render json: {errors: user.errors.full_messages }, status: :unprocessable_entity
        end
    end
    def me
        render json: @current_user
    end
   
    def update
        user= User.find(params[:id])
        user.update(user_params)
    end

    private

    def user_params
        params.permit(:username, :password, :age)
    end
end
