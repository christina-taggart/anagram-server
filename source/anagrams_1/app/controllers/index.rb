get '/:word' do
  # Look in app/views/index.erb
  @word = params[:word]
  @anagrams = []
  sorted = @word.downcase.split("").sort
  Word.all.each do |word|
    p word
    if word.name.downcase.split("").sort == sorted
      @anagrams << word.name
    end
  end

  erb :index
end




# get '/:word' do
#   # Look in app/views/index.erb
#   @word = params[:word]
#   @anagrams = []
#   anagrams(@word)
#   erb :index
# end


# def anagrams(word_input)
#   sorted = word_input.downcase.each_char.to_a.sort.join
#   Word.all.each do |word|
#     if word.downcase.each_char.to_a.sort.join == sorted
#       @anagrams << word
#     end
#   end

# end
