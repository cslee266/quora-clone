post '/answers' do
	Answer.create(params[:answer])
	erb :"users/my_questions"
end