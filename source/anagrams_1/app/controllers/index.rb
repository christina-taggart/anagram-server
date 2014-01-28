post '/word' do
  # Look in app/views/index.erb
  @word = params[:user_word]
  @anagrams = get_anagrams(@word)
  erb :word_list
end

get '/' do
  erb :index
end


def get_anagrams(word)
  anagrams = word.split('').permutation.to_a.uniq.map{ |x| x.join }
  anagrams.delete_if{|word| Word.where(text: word).empty?}
end