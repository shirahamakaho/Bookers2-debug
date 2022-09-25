class RelationshipsController < ApplicationController

  def create
    follow = relationships.create(followed_id,user_id)
    current_user.follow(params[:user_id])
    
  end

  def destroy
  end

  def followed
  end

  def followers
  end

end
