require_relative '../../config/environment'
require_relative '../../config/database'

class Word < ActiveRecord::Base
  def anagrams
    anagrams = words_of_equal_length.select { |word| is_anagram?(word.the_word, self.the_word) }
    remove_duplicates(anagrams)
  end

  private

  def words_of_equal_length
    Word.all.select { |word| word.the_word.length == self.the_word.length }
  end

  def remove_duplicates(words)
    words.select { |word| word.the_word.downcase != self.the_word.downcase }
  end

  def canonical(string)
    string.downcase.split("").sort!
  end

  def is_anagram?(word1, word2)
    canonical(word1) == canonical(word2)
  end
end