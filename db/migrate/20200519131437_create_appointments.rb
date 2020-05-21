class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.references :citizen, null: false, foreign_key: true
      t.references :clinic, null: false, foreign_key: true
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end
