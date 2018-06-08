class Pet < ActiveRecord::Base
  belongs_to :food
  belongs_to :toy
  belongs_to :user
  has_many :petposts
  has_attached_file :image

  has_many:petcomments
  validates :name, :species, :breed, :gender, :birthdate, :description, presence: true
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
