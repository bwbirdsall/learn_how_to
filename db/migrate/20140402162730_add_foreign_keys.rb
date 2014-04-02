class AddForeignKeys < ActiveRecord::Migration
  def change
    add_column :lessons, :section_id, :int
    add_column :sections, :chapter_id, :int
  end
end
