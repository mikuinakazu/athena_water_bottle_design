class DesignsController < ApplicationController

  before_action :authenticate_user!

  def index
    @designs = Design.all
    @like = Like.find_by(user_id: current_user.id)
    @likes = Like.where(design_id: params[:design_id])
    # binding.pry
  end

  def new
    @design = Design.new
  end

  def create
    design = Design.create(design_params)
  end

  def show
    @design = Design.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
    design = Design.find(params[:id])
    design.destroy
    redirect_to :root, notice: 'デザインを削除しました。'
  end

  private
    def design_params
      params.require(:design).permit(:image, :comment).merge(user_id: current_user.id)
    end

end
