class LikesController < ApplicationController
  before_action :require_user_logged_in

  def create
    micropost = Micropost.find(params[:like_id])
    current_user.like(micropost)
    flash[:success] = "投稿をお気に入り登録しました"
    redirect_back(fallback_location: root_path)
  end

  def destroy
    micropost = Micropost.find(params[:like_id])
    current_user.unlike(micropost)
    flash[:success] ="投稿をお気に入りから外しました"
    redirect_back(fallback_location: root_path)
  end
end
