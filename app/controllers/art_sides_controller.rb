class ArtSidesController < ApplicationController
  def index
    @arts = Art.all
  end
end
