require 'byebug'
get '/' do
	if logged_in?
		# byebug
		@user = User.find_by(id: session[:user_id])
		erb :"users/profile"
	else
		erb :"users/login"
	end
end
