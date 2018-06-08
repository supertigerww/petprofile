class Petcomment < ActiveRecord::Base
  belongs_to :pet
  belongs_to :user
  
  validates :content,presence: true
end
