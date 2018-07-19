class ArtsController < ApplicationController

  before_action :authenticate_user!

  def index
    @art = current_user.arts.build
    @arts = Art.all

  end

  def new
    @art = current_user.arts.build
  end

  def edit
    @art = Art.find(params[:id])
  end

  def show
    @art = Art.find(params[:id])
  end

  def create
    @art = current_user.arts.build(art_params)
    @art.save
    redirect_back(fallback_location: arts_url)
  end

  def destroy

    @art = Art.find(params[:id])
    @art.destroy
  end


  private

  def art_params
    params.require(:art).permit(:imageart, :tag1, :tag2, :tag3, :name)
  end

end
