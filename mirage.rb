require 'sinatra/base'
require 'json'

class Mirage < Sinatra::Base

  post '/echo' do
    @payload = JSON.parse(request.body.read)
    body: @payload
  end

  get '/ping' do
    'pong'
  end
end
