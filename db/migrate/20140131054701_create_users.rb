class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email_address, :limit => 254, :null => false
      t.string :password_digest, :limit => 60, :null => false
      t.string :privilege_level, :null => false

      t.timestamps
    end
  end
end
