class CreateQuestionVotes < ActiveRecord::Migration[5.0]
	def change
		create_table :question_votes do |t|
			t.references :question, foreign_key: true
			t.references :user, foreign_key: true
			t.integer :choice
			t.timestamps
		end
	end
end
