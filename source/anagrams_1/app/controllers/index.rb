get '/:word' do
  # Look in app/views/index.erb
  @word = params[:word]
  if Word.where(word: @word).empty?
    return "Word not found"
  else
    @anagrams = Word.where(word: @word)[0].anagrams
  end
  erb :index
end
