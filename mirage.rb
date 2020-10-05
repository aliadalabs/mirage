require 'sinatra'
require 'json'

post '/echo' do
  payload = request.body.read
  body payload
end

get '/ping' do
  'pong'
end

