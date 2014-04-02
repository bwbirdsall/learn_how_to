class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.column :name, :string
      t.column :number, :int
    end

    create_table :sections do |t|
      t.column :name, :string
      t.column :number, :int
    end

    create_table :chapters do |t|
      t.column :name, :string
      t.column :number, :int
    end
  end
end
