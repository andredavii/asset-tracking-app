class Category < ApplicationRecord 
  has_many :devices
  has_many :employees, :through => :devices
end
