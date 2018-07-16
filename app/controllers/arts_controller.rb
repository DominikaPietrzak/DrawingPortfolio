class ArtsController < ApplicationController

  before_action :authenticate_user!

  def index
    @arts = Art.all
  end

  def new
    @art = current_user.arts.build
  end

  def edit

  end

  def show
    @art = Art.find(params[:id])
  end

  def create
    @art = current_user.arts.build(art_params)
    @art.save
  end


  private

  def art_params
    params.require(:art).permit(:imageart, :tag1, :tag2, :tag3, :name)
  end

end
