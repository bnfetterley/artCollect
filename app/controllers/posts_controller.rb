class PostsController < ApplicationController

 before_action :current_post, only:[:edit, :update, :delete, :accept, :decline]

    def index
       @posts = Post.all
       render json: @posts
    end

     def new
         @post = Post.new
        @errors = flash[:errors]
     end

     def create
         @post =
         Post.create(post_params)
         render json: @post
     end

     def show
        @post = Post.find(params[:id])
     end

     def edit
        @post.update(post_params)
        render json: @post
     end

     def delete
         @post.destroy
         render json: @post
     end

     private

     def post_params
         params.permit(:user_id, :post_content, :genre, :artist, :image)
     end

     def current_post
         @post = 
         Post.find_by(params[:id])
         
     end

end
