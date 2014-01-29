get '/' do
  # Look in app/views/index.erb
  @word = params[:user_input]
  @word_record = Word.where(name_of_word: @word).first
  @anagrams = @word_record.get_anagrams if @word_record
  erb :index
end

post '/' do
  puts "#{params[:user_input]}"
  @word = params[:user_input]
  @word_record = Word.where(name_of_word: @word).first
  @anagrams = @word_record.get_anagrams if @word_record
  erb :index
end

get '/:name' do
  "#{params[:name]}"
  @word = params[:name]
  @word_record = Word.where(name_of_word: @word)[0]
  @anagrams = @word_record.get_anagrams if @word_record
  erb :index
end

