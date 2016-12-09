class CommentsController < ApplicationController
  def index
  end

  def new
    @comment = Comment.new()
  end

  def create
    @user = User.find(session[:user_id])
    @comment = @user.comments.create(body: params[:body],author_id: session[:user_id])
    if @comment.save
      redirect_to '/'
      else
        flash[:danger] = 'Error: Wrong Input, Please try again.'
      end
  end
end
