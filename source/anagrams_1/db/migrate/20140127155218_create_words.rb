class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :name_of_word
      t.timestamps
    end
  end
end
