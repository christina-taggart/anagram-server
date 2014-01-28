require_relative '../config/environment'

require_relative '../config/database'

require_relative '../app/models/word'

f = File.read('dict.txt').split("\n")
f.each do |word|
  Word.create!({text: word})
end

