class AddEmployeeToDevice < ActiveRecord::Migration[7.0]
  def change
    add_reference :devices, :employee, null: false, foreign_key: true
  end
end
