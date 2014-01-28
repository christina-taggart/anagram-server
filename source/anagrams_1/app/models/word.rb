require_relative '../../config/environment'
require_relative '../../config/database'

class Word < ActiveRecord::Base
  def self.anagrams(test_word)
    anagrams = []
    Word.all.each do |word|
      if word.text.split('').sort == test_word.split('').sort
        anagrams << word
      end
    end
    anagrams
  end
end