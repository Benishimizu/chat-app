class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user
  
  has_one_attached :image
  validates :content, presence: true
  # https://master.tech-camp.in/v2/curriculums/4866
end
