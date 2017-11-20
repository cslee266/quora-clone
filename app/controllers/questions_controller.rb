get '/questions/:id' do
	@question = Question.find_by(params[:id])
	erb :"questions/all_answers"
end

post '/questions' do
	Question.create(params[:question])
	redirect "/users/my_questions"
end