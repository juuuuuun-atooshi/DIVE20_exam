class RegistrationsController < ApplicationController
  def show
    user = User.find(params[:id])
    @topics = Topic.where(user_id: params[:id])
    @followeds = user.followed_users
    @followers = user.followers
  end
end
