class Word < ActiveRecord::Base
  belongs_to :base_word
  def get_base_word
    name_of_word.downcase.chars.sort.join
  end

  def get_anagrams
   base_word.words
  end
end
