require_relative '../app/models/word'
# require_relative '../db/fixtures/words'

class PopulateWords
  def self.dict_reader
    File.open('db/fixtures/words.txt', 'r') do |file|
      file.each_line{ |line| Word.create(the_word: line.strip) }
    end
  end
end

PopulateWords.dict_reader