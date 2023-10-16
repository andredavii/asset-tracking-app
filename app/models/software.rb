class Software < ApplicationRecord
  has_and_belongs_to_many :employees

  def compliant?
    employees.count <= license_count
  end
end
