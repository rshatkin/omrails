class Pin < ActiveRecord::Base
  attr_accessible :description

  validates :description, presence: true #validations can go here (i.e. length: characters)

  belongs_to :user
  validates :user_id, presence: true
end
