require "sinatra"

get '/'  do
	erb :index
end

post '/user_name' do
	names_provided = params[:input_name]
  "Hello #{names_provided}"
end