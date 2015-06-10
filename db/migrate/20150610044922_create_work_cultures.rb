class CreateWorkCultures < ActiveRecord::Migration
  def change
    create_table :work_cultures do |t|
      t.integer :client_id
      t.integer :creative
      t.integer :logical
      t.integer :problem_solver
      t.integer :listener
      t.integer :oral_communicator
      t.integer :written_communicator
      t.integer :people_skills
      t.integer :punctual
      t.integer :accurate
      t.integer :efficient
      t.integer :multitasker
      t.integer :planner
      t.integer :researcher
      t.integer :leader
      t.integer :leader
      t.integer :team_member

      t.timestamps null: false
    end
  end
end
