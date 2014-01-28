class WordsImporter
  def self.import(filename)
    File.open(filename).split("\n").each{|line| Word.create(word: line)}
  end
end