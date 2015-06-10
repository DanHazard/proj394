class CreateProfileInfos < ActiveRecord::Migration
  def change
    create_table :profile_infos do |t|
      t.integer :client_id
      t.string :fname
      t.string :lname
      t.string :city
      t.string :state

      t.timestamps null: false
    end
  end
end
