class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


         validates :name, presence: true
        #  https://master.tech-camp.in/v2/curriculums/4847


        has_many :room_users
        has_many :rooms, through: :room_users
        # https://master.tech-camp.in/v2/curriculums/4852
        has_many :messages
        # https://master.tech-camp.in/v2/curriculums/4947
end
