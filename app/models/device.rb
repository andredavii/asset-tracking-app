class Device < ApplicationRecord
  belongs_to :manufacturer, optional: true       
  belongs_to :category, optional: true       
  belongs_to :employee, optional: true  

  def full_device_name
    name + " " + "(" + manufacturer.name + "/" + category.name + ")"
  end
end
