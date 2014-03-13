class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :status
      t.integer :capacity
      t.datetime :start_time
      t.datetime :end_time
      t.datetime :preregistration_start_time
      t.datetime :preregistration_end_time

      t.timestamps
    end
  end
end
