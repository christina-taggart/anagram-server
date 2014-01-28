require 'sinatra'

get '/' do
  erb :index
end

post '/:word' do
  @word_to_anagram_check = params[:word_to_check]
  @word = params[:word]
  erb :anagrams
end


