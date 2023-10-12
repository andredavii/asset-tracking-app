class Employee < ApplicationRecord
  has_one_attached :profile_picture
  has_many :devices 
  has_and_belongs_to_many :softwares
end
