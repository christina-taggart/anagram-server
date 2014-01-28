class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string  :the_word
    end
  end
end
