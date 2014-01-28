# Read db/fixtures/dictionary.txt
# Convert each line into an entry in the pg database (words table)
require_relative "../config/database.rb"
dictionary = File.open("fixtures/dictionary.txt", "r")

dictionary.each_line do |line|
	Word.create(name: line.strip)
end