class BaseWords < ActiveRecord::Migration
  def change
    create_table :base_words do |t|
      t.string :name
      t.timestamps
    end
    add_column :words, :base_word_id, :integer
  end
end
