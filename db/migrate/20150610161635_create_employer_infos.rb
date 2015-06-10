class CreateEmployerInfos < ActiveRecord::Migration
  def change
    create_table :employer_infos do |t|
      t.integer :client_id
      t.string :companyName
      t.string :city
      t.string :state

      t.timestamps null: false
    end
  end
end
