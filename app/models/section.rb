class Section < ActiveRecord::Base
  has_many :lessons
  belongs_to :chapter
  validates :name, presence: true, uniqueness: true
  validates :number, presence: true, uniqueness: true
  validates :chapter_id, presence: true

  def self.ordered
    Section.all.sort {|a,b| a.number <=> b.number}
  end

end
