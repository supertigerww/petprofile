class Foodcomment < ActiveRecord::Base
  belongs_to :food
  belongs_to :user

  validates :content,presence: true
end
