class DesignsController < ApplicationController

  def index
    @designs = Design.all
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
