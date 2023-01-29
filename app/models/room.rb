class Room < ApplicationRecord

  # has_many :room_users
  has_many :room_users, dependent: :destroy
  has_many :users, through: :room_users
  # has_many :messages
  has_many :messages, dependent: :destroy
  validates :name, presence: true
end

# https://master.tech-camp.in/v2/curriculums/4919
# https://master.tech-camp.in/v2/curriculums/4857