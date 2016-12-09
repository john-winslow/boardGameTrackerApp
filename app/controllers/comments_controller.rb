class CommentsController < ApplicationController
  def index
  end

  def new
  end

  def create
    @comment = Comment.new(body: params[:body], author_id: params[:author_id])
    'cool' if @comment.save
    'fudge you'
  end
end
