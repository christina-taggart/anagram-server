get '/:word' do
  @word = params[:word]
  erb :index
end

post '/get_anagram' do
  word = params[:user_input]
  word.anagrams
end
