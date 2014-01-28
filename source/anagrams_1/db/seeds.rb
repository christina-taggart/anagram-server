require_relative '../config/database.rb'
require_relative '../config/environment.rb'

words = File.read('db/fixtures/dict.txt')
words.split("\n").each do |word|
  Word.create(word: word)
end