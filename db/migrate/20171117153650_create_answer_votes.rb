class CreateAnswerVotes < ActiveRecord::Migration[5.0]
	def change
		create_table :answer_votes do |t|
			t.references :answer, foreign_key: true
			t.references :user, foreign_key: true
			t.integer :choice
			t.timestamps
		end
	end
end
