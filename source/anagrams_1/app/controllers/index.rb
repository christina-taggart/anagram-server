get '/:word' do
  word = Word.new(the_word: params[:word])
  anagrams = word.anagrams.map { |word_object| word_object.the_word }
  @anagrams = anagrams.to_s
  @anagrams.gsub!(/[^a-zA-Z,]/, " ")
  erb :index
end

post '/get_anagram' do
  word = params[:user_input]
  redirect to("/#{word}")
end
