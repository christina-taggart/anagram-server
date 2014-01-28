require 'active_record'
require_relative '../app/models/word'

# module WordImporter
#   def self.import
#     f = File.open('db/fixtures/dict.txt', 'r')
#     f.each_line do |word|
#       Word.create!(word)
#     end
#     f.close
#   end
# end

module WordImporter
  def self.import
    f = File.open('db/fixtures/dict.txt', 'r')
    word = f.read.split("\n")
    word.take(5000).each { |word| Word.create!(name: word)}

  end
end

WordImporter.import



