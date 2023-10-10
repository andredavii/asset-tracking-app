class AddManufacturerToDevice < ActiveRecord::Migration[7.0]
  def change
    add_reference :devices, :manufacturer, null: false, foreign_key: true
  end
end
