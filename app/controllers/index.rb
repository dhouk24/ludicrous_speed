get '/' do
  erb :index
end

post '/input' do
  redirect '/' + params[:input]
end

get '/:input' do 
  @words = Word.find_anagrams( params[:input] )
  erb :index
end
