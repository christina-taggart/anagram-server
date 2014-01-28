require_relative '../../config/database.rb'
class Word < ActiveRecord::Base
  # Returns an array of Word objects which represent anagrams of this word
  # This can and should make calls to the db

  # generate all letter combinations of base_word
  # shove it into words_to_test
  def anagrams
  	base_word = self.name
  	words_to_test = base_word.split('').permutation.to_a
  	words_to_test.map! do |word|
  		word.join('')
  	end
  	anagram_words = []
  	# make calls to the DB to test these words
  	words_to_test.each do |word|
  		anagram_words << word unless Word.where(name: word).empty?
	end
  	# return the words that we found a match in the DB.
  	anagram_words
  end
end