class CommentsController < ApplicationController
  def index
  end

  def new
    @user = current_user
    @comment = @user.comments.new
  end

  def create
    @user = User.find(session[:user_id])
    # @game = Game.find(params[:game_id])
    if @game
      comment = @game.comments.new(body: params[:comment][:body],author_id: @user.id)

      if comment.save
        redirect_to game_path(@game)
      else
        redirect_to game_path(@game)
      end

    else
      comment = @user.comments.new(body: params[:comment][:body],author_id: @user.id)

      if comment.save
        redirect_to user_path(@user)
      else
        flash[:danger] = 'Error: Wrong Input, Please try again.'
        redirect_to '/'
      end

    end

  end
end
