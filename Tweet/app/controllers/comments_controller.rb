class CommentsController < ApplicationController
  def create
    @publish = Publish.find(params[:publish_id])
    @comment = @publish.comments.create(comment_params)
    redirect_to publish_path(@publish)
  end
   def destroy
    @publish = Publish.find(params[:publish_id])
    @comment = @publish.comments.find(params[:id])
    @comment.destroy
    redirect_to publish_path(@publish)
  end
 
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
