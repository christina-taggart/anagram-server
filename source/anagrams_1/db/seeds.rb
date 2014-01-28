
require_relative '../app/models/word'

# class WordImporter
#   def self.import(filename = '/fixtures/words')
#     File.open(filename, "r") do |f|
#       f.each_line do |line|
#         new_word = Word.create(word: line)



#     File.open("my/file/path", "r") do |f|
#   f.each_line do |line|
#     puts line
#   end
# end
# end

class WordImporter
  def self.import
    f = File.open('db/fixtures/words.txt', 'r')
    words = f.read.split("\n")
    words.each { |word| Word.create(anagram: word) }
  end
end