require 'sinatra'
require 'json'

get '/' do
  '👋'
end

get '/ping' do
  'pong'
end

post '/echo' do
  payload = request.body.read
  body payload
end
