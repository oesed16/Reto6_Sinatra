require 'sinatra'

get '/' do
    @i = params[:item]
    @i = 0 if @i == nil
    erb :contador
end

get '/contador' do
    @i = params[:click].to_i + 1
    redirect "/?item=#{@i}" # Redirige a home 
end

