class Dish < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many :reviews

  has_attached_file :image, styles: { medium: "475x475>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
