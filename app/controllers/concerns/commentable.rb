module Commentable 
    extend ActiveSupport::Concern
    include ActionView::RecordIdentifier 
    include RecordHelper 

    included do
        before_action :authorize_user!, unless :devise_controller?
            
        end
    end 

    def create 
        @comment = @commentable.comments.new(comment_params)
        respond_to do |format|
        if @comment.save 
            redirect_to @commentable
        else
            format.turbo_stream { render turbo_stream: turbo_stream.replace(dom_id_for_records(@commentable, @comment), partial: 'comments/form', locals: { commentable: @commentable, comment: @comment }) }
            format.html { render :new }
        end 
        end
    end

    private

    def comment_params 
        params.require(:comment).permit(:body, :parent_id).merge(user_id: current_user.id)
    end

end
