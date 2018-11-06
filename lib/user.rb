require 'active_record'
require 'bcrypt'

class User < ActiveRecord::Base

  def self.create_account(email:, first_name:, last_name:, password:)
    encrypted_password = BCrypt::Password.create(password)
    User.create(email: email, first_name: first_name, last_name: last_name, password: encrypted_password)
  end
end
