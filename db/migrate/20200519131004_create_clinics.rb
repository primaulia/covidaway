class CreateClinics < ActiveRecord::Migration[6.0]
  def change
    create_table :clinics do |t|
      t.string :address
      t.integer :capacity

      t.timestamps
    end
  end
end
