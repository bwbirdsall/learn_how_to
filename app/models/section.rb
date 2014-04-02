class Section < ActiveRecord::Base
  has_many :lessons
  belongs_to :chapter
  validates :name, presence: true, uniqueness: true
  validates :number, presence: true, uniqueness: true
  validates :chapter_id, presence: true

  def self.ordered
    Section.order(:number)
  end

  def next
    @next_section = Section.new
    Section.ordered.each_with_index do |section, index|
      if section.number == self.number
        @next_section = Section.ordered[index + 1]
      end
    end
    @next_section
  end

  def previous
    @previous_section = Section.new
    Section.ordered.each_with_index do |section, index|
      if section.number == self.number
        if index == 0
          @previous_section = nil
        else
          @previous_section = Section.ordered[index - 1]
        end
      end
    end
    @previous_section
  end
end
