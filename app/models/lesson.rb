class Lesson < ActiveRecord::Base
  belongs_to :section
  has_one :chapter, through: :section
  validates :name, presence: true, uniqueness: true
  validates :number, presence: true, uniqueness: true
  validates :section_id, presence: true

  def self.ordered
    Lesson.all.sort {|a,b| a.number <=> b.number}
  end

end
