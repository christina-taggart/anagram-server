class DictionaryImporter
  def initialize(file)
    @file = file
  end

  def populate
    File.open(@file).each do |line|
      Word.create(name_of_word: line.chomp)
    end
  end

  def generate_anagrams
    Word.all.each do |word|
      base_word = word.get_base_word

      base_word_record = BaseWord.where(name: base_word).first_or_create

      word.base_word_id = base_word_record.id
      word.save
    end
  end
end

filename = File.expand_path('../fixtures/dictionary.txt', __FILE__)

book = DictionaryImporter.new(filename)
book.populate
book.generate_anagrams