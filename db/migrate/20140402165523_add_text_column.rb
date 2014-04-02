class AddTextColumn < ActiveRecord::Migration
  def change
    add_column :lessons, :lesson_body, :text
  end
end
