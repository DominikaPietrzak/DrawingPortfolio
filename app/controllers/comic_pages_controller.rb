class ComicPagesController < ApplicationController

  def index
    @pages = ComicPage.all
  end

  def new
    @page = ComicPage.new(params)
  end

  def edit

  end

  def show
    @page = ComicPage.find(prams[:id])
  end

  def create
  end
end
