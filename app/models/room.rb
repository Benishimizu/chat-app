class Room < ApplicationRecord

  has_many :room_users
  has_many :users, through: :room_users
  has_many :messages
  
  validates :name, presence: true
end

# https://master.tech-camp.in/v2/curriculums/4919
