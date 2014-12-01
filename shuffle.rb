require 'sinatra'
require 'httparty'
require 'yaml'

data = YAML.load_file(File.expand_path("./data.yml"))

post('/') do
  HTTParty.post(data['url'], body: { text: data['team_members'].shuffle.join(', '), channel: "\##{params['channel_name']}" }.to_json )
end
