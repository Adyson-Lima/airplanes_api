class CreateAirplanes < ActiveRecord::Migration[7.0]
  def change
    create_table :airplanes do |t|
      t.string :name
      t.string :description
      t.string :manufacturer

      t.timestamps
    end
  end
end
