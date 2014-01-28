class Word < ActiveRecord::Base

  def anagrams(user_word)
    word = self.word.downcase.split("").sort
    user = user_word.downcase.split("").sort
    word.join("") == user.join("")
  end

end
