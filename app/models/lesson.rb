class Lesson < ActiveRecord::Base
  belongs_to :section
  has_one :chapter, through: :section
  validates :name, presence: true, uniqueness: true
  validates :number, presence: true, uniqueness: true
  validates :section_id, presence: true

  def self.ordered
    Lesson.all.sort {|a,b| a.number <=> b.number}
  end


  def next
    @next_lesson = Lesson.new
    Lesson.ordered.each_with_index do |lesson, index|
      if lesson.number == self.number
        @next_lesson = Lesson.ordered[index + 1]
      end
    end
    @next_lesson
  end

  def previous
    @previous_lesson = Lesson.new
    Lesson.ordered.each_with_index do |lesson, index|
      if lesson.number == self.number
        if index == 0
          @previous_lesson = nil
        else
          @previous_lesson = Lesson.ordered[index - 1]
        end
      end
    end
    @previous_lesson
  end
end
