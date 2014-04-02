class ChangeChapterNumbersToFloats < ActiveRecord::Migration
  def change
    change_column :chapters, :number, :float
  end
end
