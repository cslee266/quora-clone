post '/question_votes' do
	QuestionVote.vote(*params[:question_vote].values)
	erb :"users/my_questions"
end

post '/answer_votes' do
	AnswerVote.vote(*params[:answer_vote].values)
	erb :"users/my_questions"
end