class CreateSkillsets < ActiveRecord::Migration
  def change
    create_table :skillsets do |t|
      t.integer :client_id
      t.integer :project_management
      t.integer :scripting
      t.integer :programming
      t.integer :dbadmin
      t.integer :ui_ux
      t.integer :algorithms
      t.integer :system_design
      t.integer :analysis
      t.integer :web_dev
      t.integer :mobile_dev
      t.integer :sysarchitecture
      t.integer :ai
      t.string :game_programming

      t.timestamps null: false
    end
  end
end
