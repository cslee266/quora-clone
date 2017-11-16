class User < ActiveRecord::Base
	validates :email, uniqueness: true, format: { with: /(^([a-z]*\s*)*\<*([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\>*$)/i }
	validates :password, format: { with: /^(?=.*[a-zA-Z])(?=.*[0-9]).{6,}$/,
								   multiline: true }

	has_secure_password
end

