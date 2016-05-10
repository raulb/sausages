require 'json'

before do
  content_type 'json'
end

get '/' do
  redirect to('/sausages')
end

get '/sausages' do
  Sausage.all.to_json
end

get '/sausages/:name' do |name|
  sausage = Sausage.find(name)
  sausage.to_json
end
