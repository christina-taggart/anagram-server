require_relative '../../config/environment'
class Word < ActiveRecord::Base
  # Remember to create a migration!
  def self.check_for_anagrams(word)
    check_against = canonical(word)
    the_words_that_are = []
    Word.all.each {|word_to_check| the_words_that_are << word_to_check if canonical(word_to_check.anagram) == check_against}
    the_words_that_are
  end

   def self.canonical(word)
    word.downcase.split('').sort.join
   end
end