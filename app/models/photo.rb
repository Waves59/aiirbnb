class Photo < ActiveRecord::Base
  belongs_to :room
  
  validates :fullname, presence: true, length: {maximum: 50}
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  
  has_many :rooms
end
