class QuestionVote < ActiveRecord::Base
	validates_uniqueness_of :user_id, scope: :question_id

	def self.total_votes(question_id)
		votes = self.where(question_id: question_id)
		total_votes = votes.reduce(0) { |sum, n| sum + n.choice }
	end

	def self.vote(user_id, question_id, choice)
		if vote = self.find_by(user_id: user_id, question_id: question_id)
			if choice.to_i == vote.choice
				self.update(vote.id, choice: 0)
			else
				self.update(vote.id, choice: choice)
			end
		else
			self.create(user_id: user_id, question_id: question_id, choice: choice)
		end
	end

end
