json.array!(@profile_infos) do |profile_info|
  json.extract! profile_info, :id, :client_id, :fname, :lname, :city, :state
  json.url profile_info_url(profile_info, format: :json)
end
