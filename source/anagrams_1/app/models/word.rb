class Word < ActiveRecord::Base
  def anagrams
    Word.all
  end

  private

  def canonical(string)
    string.downcase.split("").sort!
  end

  def is_anagram?(word1, word2)
    canonical(word1) == canonical(word2)
  end
end
