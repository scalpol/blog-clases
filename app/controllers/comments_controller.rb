class CommentsController < ApplicationController
  def create
    post = Post.find(params[:post_id])
    post.comments.build(comment_params)
    post.save
    redirect_to post
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
