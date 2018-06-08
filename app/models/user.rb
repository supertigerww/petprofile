class User < ActiveRecord::Base
  has_secure_password
  has_many:pets
  has_many:petcomments
  has_many:foodcomments
  has_many:toycomments

  email_regex = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: true, format: { with: email_regex }
  validates :first_name,length:{minimum:2, message:"must be at least 2 characters"}
  validates :last_name,length:{minimum:2, message:"must be at least 2 characters"}
end
