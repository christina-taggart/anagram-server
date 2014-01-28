get '/:word' do
  # Look in app/views/index.erb
  @word = params[:word]
  words = Word.all
  @output_words = []
  words.each do |test|
    if test.anagrams(@word)
      @output_words << test.word
    end
  end

  erb :index
end
