post '/sessions' do
	@user = User.find_by(email: params[:user][:email])
	if @user && @user.authenticate(params[:user][:password])
		session[:user_id] = @user.id
		erb :"users/profile"
	else
		erb :"users/login"
	end
end

post '/logout' do
	session[:user_id] = nil
	redirect '/'
end