class CommentsController < ApplicationController

    def index
        @comments = Comment.all
        render json: @comments
     end
 
      def new
          @comment = Comment.new
         @errors = flash[:errors]
      end
 
      def create
          @comment =
          Comment.create(comment_params)
          render json: @comment
      end
 
      def show
         @comment = Comment.find(params[:id])
      end
 
      def edit
      end
 
      def destroy
          @comment.destroy
 
      end
 
      private
 
      def comment_params
          params.permit(:user_id, :post_id, :content)
      end
 
      def current_post
          @comment = 
          # byebug
          Comment.find_by(params[:id])
          
      end
 
 end
 
