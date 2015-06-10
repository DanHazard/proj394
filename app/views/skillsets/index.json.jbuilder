json.array!(@skillsets) do |skillset|
  json.extract! skillset, :id, :client_id, :project_management, :scripting, :programming, :dbadmin, :ui_ux, :algorithms, :system_design, :analysis, :web_dev, :mobile_dev, :sysarchitecture, :ai, :game_programming
  json.url skillset_url(skillset, format: :json)
end
