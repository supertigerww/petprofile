class Toycomment < ActiveRecord::Base
  belongs_to :toy
  belongs_to :user

  validates :content,presence: true
end
