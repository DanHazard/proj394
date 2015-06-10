json.array!(@work_cultures) do |work_culture|
  json.extract! work_culture, :id, :client_id, :creative, :logical, :problem_solver, :listener, :oral_communicator, :written_communicator, :people_skills, :punctual, :accurate, :efficient, :multitasker, :planner, :researcher, :leader, :team_member
  json.url work_culture_url(work_culture, format: :json)
end
