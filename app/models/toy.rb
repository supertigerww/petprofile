class Toy < ActiveRecord::Base
    has_attached_file :image
    has_many:toycomments
    has_many:pets

    validates :name, :description, presence: true
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
