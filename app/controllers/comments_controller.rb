class CommentsController < ApplicationController
  def index
  end

  def new
    @comment = Comment.new()
  end

  def create
    @comment = Comment.new(body: params[:body], author_id: params[:author_id])
    if @comment.save
      redirect_to 'users#show'
      else
      end
  end
end
