class ComicPageSidesController < ApplicationController
  def index
    @pages = ComicPage.all
  end
end
