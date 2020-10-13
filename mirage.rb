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

post '/code-analysis' do
  payload = JSON.parse(request.body.read)
  body "The quality of the code in #{payload['target_url']} is #{['not', 'quite', 'really'].sample} #{['good', 'bad', 'the best', 'awful'].sample}"
end
