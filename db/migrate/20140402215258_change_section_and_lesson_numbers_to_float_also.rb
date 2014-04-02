class ChangeSectionAndLessonNumbersToFloatAlso < ActiveRecord::Migration
  def change
    change_column :sections, :number, :float
    change_column :lessons, :number, :float
  end
end
