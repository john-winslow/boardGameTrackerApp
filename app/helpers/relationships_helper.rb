module RelationshipsHelper

  def get_username(id)
    u = User.find(id).username
  end

  def friends?(user,user_id_2)
    relationship = Relationship.find(user_id: user.id, user_id_2: user_2.id)
    if relationship?
      return true
    else
      return false
    end
    
  end

end
