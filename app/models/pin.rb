class Pin < ActiveRecord::Base
acts_as_votable
belongs_to :user
has_many :posts
has_attached_file:image, styles: { medium: "300*300>" }
validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end