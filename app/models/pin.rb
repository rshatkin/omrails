class Pin < ActiveRecord::Base
  attr_accessible :description, :image


  validates :description, presence: true #validations can go here (i.e. length: characters)
  validates :user_id, presence: true
  validates_attachment :image, presence: true, 
  															content_type: { content_type: ['image/jpeg', 'image/jpeg', 'image/png', 'image/gif'] },
  															size: { less_than: 5.megabytes }

  belongs_to :user
  has_attached_file :image, styles: { medium: "320x240>"}
end
