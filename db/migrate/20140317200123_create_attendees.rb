class CreateAttendees < ActiveRecord::Migration
  def change
    create_table :attendees do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.date :birth_date
      t.integer :user_id

      t.timestamps
    end
  end
end
