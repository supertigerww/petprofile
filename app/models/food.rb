class Food < ActiveRecord::Base
    has_attached_file :image
    has_many:pets
    has_many:foodcomments

    validates :name, :description, presence: true
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
