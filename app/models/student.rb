class Student < ApplicationRecord
  belongs_to :user
  has_many :experiences
  has_many :skills
  has_many :educations
  has_one :capstone
end
