class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |col|
      col.string :text, :anagram
      col.timestamps
    end
  end
end
