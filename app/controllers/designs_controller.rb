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
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def design_params
      params.require(:design).permit(:image, :comment).merge(user_id: current_user.id)
    end

end
