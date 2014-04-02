require 'spec_helper'

describe Chapter do
  it { should have_many :sections }
  it { should have_many :lessons }
  it { should validate_presence_of :name }
  it { should validate_presence_of :number }
  it { should validate_uniqueness_of :name }
  it { should validate_uniqueness_of :number }

  describe 'next' do
    it 'gets the next Chapter based on number' do
      chapter1 = Chapter.create(:name => "Chapter1", :number => 1)
      chapter3 = Chapter.create(:name => "Chapter3", :number => 3)
      chapter2 = Chapter.create(:name => "Chapter2", :number => 2)
      chapter1.next.should eq chapter2
      chapter3.next.should eq nil
    end
  end

  describe 'previous' do
    it 'gets the previous Chapter based on number' do
      chapter1 = Chapter.create(:name => "Chapter1", :number => 1)
      chapter3 = Chapter.create(:name => "Chapter3", :number => 3)
      chapter2 = Chapter.create(:name => "Chapter2", :number => 2)
      chapter1.previous.should eq nil
      chapter3.previous.should eq chapter2
    end
  end
end
