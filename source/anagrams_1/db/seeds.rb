class DictionaryImporter
  def initialize(file)
    @file = file
  end

  def populate
    File.open(@file).each do |line|
      Word.create(name_of_word: line.chomp)
    end
  end
end

filename = File.expand_path('../fixtures/dictionary.txt', __FILE__)

book = DictionaryImporter.new(filename)
p book.populate