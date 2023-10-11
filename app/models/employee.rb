class Employee < ApplicationRecord
  has_one_attached :profile_picture
  has_many :devices
end
