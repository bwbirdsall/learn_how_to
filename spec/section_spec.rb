require 'spec_helper'

describe Section do
  it { should have_many :lessons }
  it { should belong_to :chapter }
  it { should validate_presence_of :name }
  it { should validate_presence_of :number }
  it { should validate_presence_of :chapter_id }
  it { should validate_uniqueness_of :name }
  it { should validate_uniqueness_of :number }

  describe 'next' do
    it 'gets the next Section based on number' do
      section1 = Section.create(:name => "Section1", :number => 1, :chapter_id => 1.4)
      section3 = Section.create(:name => "Section3", :number => 3, :chapter_id => 1.4)
      section2 = Section.create(:name => "Section2", :number => 2, :chapter_id => 1.4)
      section1.next.should eq section2
      section3.next.should eq nil
    end
  end

  describe 'previous' do
    it 'gets the previous Section based on number' do
      section1 = Section.create(:name => "Section1", :number => 1, :chapter_id => 1.4)
      section3 = Section.create(:name => "Section3", :number => 3, :chapter_id => 1.4)
      section2 = Section.create(:name => "Section2", :number => 2, :chapter_id => 1.4)
      section1.previous.should eq nil
      section3.previous.should eq section2
    end
  end
end
