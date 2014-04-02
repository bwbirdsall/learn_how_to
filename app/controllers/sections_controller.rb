class SectionsController < ApplicationController
  def index
    @sections = Section.all
    render('/sections/index.html.erb')
  end

  def new
    @section = Section.new
    render('/sections/new.html.erb')
  end

  def create
    @section = Section.new(params[:sections])
    if @section.save
      redirect_to('/sections')
    else
      render('sections/new.html.erb')
    end
  end
end
