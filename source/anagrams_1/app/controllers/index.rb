get '/:word' do
  @word = params[:word]
  @anagrams = check_for_anagrams(@word)
  erb :index
end

# returns an array of anagrams, or an empty array if none were found
def check_for_anagrams(word)
	word_to_check = Word.new(name: @word)
	anagrams = word_to_check.anagrams
end
