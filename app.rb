require "sinatra"

get '/'  do
	redirect '/user_name'
end

get '/user_name' do
	erb :index
end

post '/user_name' do
	name_provided = params[:name_provided]
    redirect '/age?name_provided=' + name_provided
end

get '/age' do
	name_provided = params[:name_provided]
	# puts "name_provided in get age #{name_provided}"
	erb :age, :locals => {:name_provided => name_provided}
end

post '/age' do
	age_provided = params[:age_provided]
	name_provided = params[:name_provided]
	# puts "name_provided in get age #{name_provided} and age_provided is #{age_provided}"
	redirect '/fave_nums?age_provided=' + age_provided + '&name_provided=' + name_provided

end

get '/fave_nums' do
	age_provided = params[:age_provided]
	name_provided = params[:name_provided]
	puts "age_provided in get fav nums #{age_provided}"
	puts "name_provided in get fav nums #{name_provided}"
	erb :fave_nums, :locals => {:age_provided => age_provided, :name_provided => name_provided}
end

post '/fave_nums' do
	age_provided = params[:age_provided]
	name_provided = params[:name_provided]
  	nums_provided = params[:input_nums]
 #  	puts "age_provided in get nums #{age_provided}"
	# puts "name_provided in get age #{name_provided}"
	# puts "nums_provided in get age #{nums_provided}"

end


# # 404 Error!
not_found do
  status 404
  erb :oops
end