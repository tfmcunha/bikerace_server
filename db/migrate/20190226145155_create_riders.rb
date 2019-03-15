class CreateRiders < ActiveRecord::Migration[5.2]
  def change
    create_table :riders do |t|
      t.string :first_name
      t.string :last_name
      t.string :city_origin
      t.string :state_origin
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
