class Chapter < ActiveRecord::Base
  has_many :sections
  has_many :lessons, through: :sections
  validates :name, presence: true, uniqueness: true
  validates :number, presence: true, uniqueness: true

  def self.ordered
    Chapter.order(:number)
  end

  def next
    @next_chapter = Chapter.new
    Chapter.ordered.each_with_index do |chapter, index|
      if chapter.number == self.number
        @next_chapter = Chapter.ordered[index + 1]
      end
    end
    @next_chapter
  end

  def previous
    @previous_chapter = Chapter.new
    Chapter.ordered.each_with_index do |chapter, index|
      if chapter.number == self.number
        if index == 0
          @previous_chapter = nil
        else
          @previous_chapter = Chapter.ordered[index - 1]
        end
      end
    end
    @previous_chapter
  end
end
