json.array!(@employer_infos) do |employer_info|
  json.extract! employer_info, :id, :client_id, :companyName, :city, :state
  json.url employer_info_url(employer_info, format: :json)
end
