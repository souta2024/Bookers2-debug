class RelationshipsController < ApplicationController
  def create
  user = User.find(params[:user_id])
  following = current_user.active_relationships.new(followed_id: user.id)
  following.save
  redirect_to request.referer
  end

  def destroy
    user = User.find(params[:user_id])
    following = current_user.active_relationships.find_by(followed_id: user.id)
    following.destroy
    redirect_to request.referer
  end

  def followings
    
  end

  def followers
    
  end
end
