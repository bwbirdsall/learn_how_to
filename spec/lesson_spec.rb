require 'spec_helper'

describe Lesson do
  it { should belong_to :section }
  it { should validate_presence_of :name }
  it { should validate_presence_of :number }
  it { should validate_presence_of :section_id }
  it { should validate_uniqueness_of :name }
  it { should validate_uniqueness_of :number }
end
