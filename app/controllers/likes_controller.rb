class LikesController < ApplicationController
  def create
    @like = Like.create(user_id: current_user.id, design_id: params[:design_id])
    @likes = Like.where(design_id: params[:design_id])
    @designs = Design.all
  end

  def destroy
    like = Like.find_by(user_id: current_user.id, design_id: params[:design_id])
    like.destroy
    @likes = Like.where(design_id: params[:design_id])
    @designs = Design.all
  end
end
