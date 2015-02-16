class CommentsController < ApplicationController

  def new
    @topic = Topic.find(params[:topic_id])
    @comment = @topic.comments.create
  end

  def create 
    @topic = Topic.find(params[:topic_id])
    @comment = @topic.comments.create(comment_params)
    redirect_to @topic
  end

  


  private

    def comment_params
      params.require(:comment).permit(:response)
    end
end
