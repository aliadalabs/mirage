$stdout.sync = true

require './mirage.rb'
run Sinatra::Application

