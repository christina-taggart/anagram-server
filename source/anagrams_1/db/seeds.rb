require_relative '../app/models/word'

class WordImporter

  def self.import
    File.open("./db/fixtures/words.txt", "r").each_line do |word|
      Word.create!(text: word)
    end
  end

end

WordImporter.import