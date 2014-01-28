class Word < ActiveRecord::Base
  def self.anagrams(user_word)
    user_sorted = user_word.downcase.split("").sort
    Word.all.select do |word|
      word.word if word.sorted == user_sorted.join("")
    end
  end
end
