require 'sinatra'

get '/:word' do
  @word = params[:word]
  erb :index
end
