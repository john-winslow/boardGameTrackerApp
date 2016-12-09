class CommentsController < ApplicationController
  def index
  end

  def new
    @user = current_user
    @comment = @user.comments.new
  end

  def create
    @user = User.find(session[:user_id])
    p 'hey there im in the create *******************************************'
    p params[:body]
    p @comment = @user.comments.new(body: params[:body],author_id: @user.id)
    p @comment.valid?
    if @comment.save
      redirect_to '/'
      else
        flash[:danger] = 'Error: Wrong Input, Please try again.'
        redirect_to '/'
      end
  end
end
