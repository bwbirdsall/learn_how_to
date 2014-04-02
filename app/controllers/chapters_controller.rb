class ChaptersController < ApplicationController
  def index
    @chapters = Chapter.all
    render('/chapters/index.html.erb')
  end

  def new
    @chapter = Chapter.new
    render('/chapters/new.html.erb')
  end

  def create
    @chapter = Chapter.new(params[:chapters])
    if @chapter.save
      redirect_to('/chapters')
    else
      render('chapters/new.html.erb')
    end
  end
end
