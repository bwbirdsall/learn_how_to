class Chapter < ActiveRecord::Base
  has_many :sections
  has_many :lessons, through: :sections
  validates :name, presence: true, uniqueness: true
  validates :number, presence: true, uniqueness: true

  def self.ordered
    Chapter.all.sort {|a,b| a.number <=> b.number}
  end
end
