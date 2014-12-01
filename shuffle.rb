require 'sinatra'
require 'httparty'
require 'yaml'

data = YAML.load_file(File.expand_path("./data.yml"))

post('/') do
  team = data['team_members'].shuffle

  HTTParty.post(data['url'], body: { text: team, channel: "\##{params['channel_name']}" }.to_json )
end
