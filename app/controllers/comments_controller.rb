class CommentsController < ApplicationController

  def create
    @comment = Comment.create(params.require(:comment).permit(:body, :post_id))
    redirect_to post_path(@comment.post)
  end

end
