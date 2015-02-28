class CreateAirplanes < ActiveRecord::Migration
  def change
    create_table :airplanes do |t|
      t.string :name
      t.string :pilot

      t.timestamps null: false
    end
  end
end
