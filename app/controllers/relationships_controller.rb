class RelationshipsController < ApplicationController

  def create
    @relationship = Relationship.new(relationship_params)
    @user = User.find(@relationship.user_id_2)

    if @relationship.save
      redirect_to "/users/#{@user.id}"
    else
      redirect_to '/'
    end

  end

  private
    def relationship_params
      params.require(:relationship).permit(:user_id, :user_id_2)  
    end

end
