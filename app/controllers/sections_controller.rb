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

  def show
    @section = Section.find(params[:id])
    render('sections/show.html.erb')
  end

  def edit
    @section = Section.find(params[:id])
    render('sections/edit.html.erb')
  end

  def update
    @section = Section.find(params[:id])

    if @section.update(params[:sections])
      redirect_to("/sections/#{@section.id}")
    else
      render('sections/edit.html.erb')
    end
  end
end
