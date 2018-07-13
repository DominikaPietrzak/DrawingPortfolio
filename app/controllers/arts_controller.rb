class ArtsController < ApplicationController

  def index
    @arts = Arts.all
  end

  def new
    @art = Art.new

  end

  def edit

  end

  def create

  end


  private

  def art_params
    params.require(:art).permit(:imageart)
  end

end
