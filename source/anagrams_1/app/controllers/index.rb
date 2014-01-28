require_relative '../models/word'

get '/:word' do
  # Look in app/views/index.erb
  @word = params[:word]
  @the_words_that_are = Word.check_for_anagrams(@word)
  @word_array = []
  @the_words_that_are.each { |word| @word_array << word.anagram }
  erb :index
end

# post '/:word' do
#   @word
#   # p check_for_anagrams(@word)
#   erb :index
# end