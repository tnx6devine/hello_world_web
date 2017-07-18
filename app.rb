require "sinatra"

get '/'  do
	redirect '/user_name'
end

get '/user_name' do
	erb :index
end

post '/user_name' do
	name_provided = params[:input_name]
    redirect '/age?name_provided=' + name_provided
end

get '/age' do
	name_provided = params[:input_name]
	puts "name_provided in get age #{name_provided}"
	erb :age
end

post '/age' do
	age_provided = params[:input_age]
	redirect '/fave_nums?user_age' + user_age

end

# get 'fave_nums' do
# 	erb :fave_nums
# end

# post '/fave_nums' do
#   	nums_provided = params[:input_nums]
# 	redirect '/nums?user_fave_nums' + user_fave_nums
# end