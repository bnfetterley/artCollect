class UsersController < ApplicationController

#     def index
#         @users = User.all
#         render json: @users
#     end

#     def new
#         @user = User.new
#         @errors = flash[:errors]
#     end

#     def create
#         @user =
#         User.create(user_params)
#         render json: @user
#     end

#     def show
#        @user = User.find(params[:id])
#        render json: @user
#     end

#     private

#     def user_params
#         params.permit(:username, :bio, :post_id, :artist, :image, :comment_id)
#     end

#     def current_user
#         @user = 
#         User.find_by(params[:id])
        
#     end
# end

    def index
        @users = User.all
        render json: @users
    end

def show
    user = User.find(params[:id])
    render json: user
end

def create
    user = User.create(user_params)
    if user.valid?
        user = user
        token = JWT.encode({user_id: user.id}, secret, 'HS256')
        render json: {user: user, token: token}
    else
        render json: {errors: user.errors.full_messages}
    end
end

def update
    user = User.find(params[:id])
    user.update(user_params)
    render json: user
end

def destroy
    user = User.find(params[:id])
    user.destroy
end

private

def user_params
    params.permit(:username, :password)
end

end



