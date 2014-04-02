class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
    render('/lessons/index.html.erb')
  end

  def new
    @lesson = Lesson.new
    render('/lessons/new.html.erb')
  end

  def create
    @lesson = Lesson.new(params[:lessons])
    if @lesson.save
      redirect_to('/lessons')
    else
      render('lessons/new.html.erb')
    end
  end
end
