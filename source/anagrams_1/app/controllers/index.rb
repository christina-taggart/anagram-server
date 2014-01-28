require 'sinatra'
require_relative '../models/word'

get '/' do
  erb :index
end

post '/:word' do
  #@word_to_anagram_check = params[:word_to_check]
  @word = params[:word_to_check]
  @anagram = Word.anagrams(@word)
  p @anagram
  erb :anagram
end

