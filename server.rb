require 'sinatra'
require 'json'

class Queue

  @matches = []

  def self.all
    @matches
  end

  def self.add_match(options)
    @matches << options.merge({
      id: rand(100000).to_s
    })
  end

end

post '/add_match' do
  Queue.add_match({
    playerOne: params[:playerOne].to_s,
    playerTwo: params[:playerTwo].to_s
  })
  {
    success: true
  }.to_json
end

get '/current_queue' do
  content_type "application/json"
  Queue.all.to_json
end
