class Word < ActiveRecord::Base
  validates :word, uniqueness: :true

  def anagrams
    words = Word.where("length(word) = #{self.word.length}").to_a.map{|word| word.word}
    anagrams = words.select{|word| word.split('').sort == self.word.split('').sort}
    anagrams
  end
end