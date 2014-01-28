class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |col|
      col.string :word
    end
  end
end
