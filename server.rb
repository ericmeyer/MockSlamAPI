require 'sinatra'
require 'json'

class Queue

  @matches = []

  def self.all
    @matches
  end

  def self.delete(id)
    @matches.each do |match|
      if match[:id] == id
        @matches.delete(match)
      end
    end
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

delete "/delete_match" do
  Queue.delete(params[:id])
  {
    success: true
  }.to_json
end
