class Posts::CommentsController < ApplicationController 
    include Commentable 
    before_action :set_commentable
    

    private 

    def set_commentable
        @commentable = Post.find(params[:id])
    end
end