require 'spec_helper'

describe Section do
  it { should have_many :lessons }
  it { should belong_to :chapter }
  it { should validate_presence_of :name }
  it { should validate_presence_of :number }
  it { should validate_presence_of :chapter_id }
  it { should validate_uniqueness_of :name }
  it { should validate_uniqueness_of :number }
end
