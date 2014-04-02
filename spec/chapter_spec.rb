require 'spec_helper'

describe Chapter do
  it { should have_many :sections }
  it { should have_many :lessons }
  it { should validate_presence_of :name }
  it { should validate_presence_of :number }
  it { should validate_uniqueness_of :name }
  it { should validate_uniqueness_of :number }
end
