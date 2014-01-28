get '/:word' do
  @word = params[:word]
  @anagram_matches = Word.anagrams(@word)
  erb :index
end
