class ComicSidesController < ApplicationController
  def index
    @comics = ComicBook.all
  end
end
