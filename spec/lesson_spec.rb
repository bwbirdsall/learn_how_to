require 'spec_helper'

describe Lesson do
  it { should belong_to :section }
  it { should validate_presence_of :name }
  it { should validate_presence_of :number }
  it { should validate_presence_of :section_id }
  it { should validate_uniqueness_of :name }
  it { should validate_uniqueness_of :number }

  describe 'next' do
    it 'gets the next Lesson based on number' do
      lesson1 = Lesson.create(:name => "Lesson1", :number => 1, :section_id => 1.4)
      lesson3 = Lesson.create(:name => "Lesson3", :number => 3, :section_id => 1.4)
      lesson2 = Lesson.create(:name => "Lesson2", :number => 2, :section_id => 1.4)
      lesson1.next.should eq lesson2
      lesson3.next.should eq nil
    end
  end

  describe 'previous' do
    it 'gets the previous Lesson based on number' do
      lesson1 = Lesson.create(:name => "Lesson1", :number => 1, :section_id => 1.4)
      lesson3 = Lesson.create(:name => "Lesson3", :number => 3, :section_id => 1.4)
      lesson2 = Lesson.create(:name => "Lesson2", :number => 2, :section_id => 1.4)
      lesson1.previous.should eq nil
      lesson3.previous.should eq lesson2
    end
  end
end
