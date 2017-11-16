
get '/users/new' do
  erb :"users/new"
end

get '/users/login' do
  erb :"users/login"
end

post '/users' do
	@user = User.new(params[:user])
	if user.save
		erb :"/users/profile"
	else
		render '/users/login'
	end
end

get '/users/:id' do
	@user = User.find_by(id: params[:id])
	erb :"/users/profile"
end
