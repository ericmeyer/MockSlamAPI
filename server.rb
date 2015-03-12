require 'sinatra'
require 'json'

get '/current_queue' do
  content_type "application/json"
  File.read("./responses/current_queue.json")
end
