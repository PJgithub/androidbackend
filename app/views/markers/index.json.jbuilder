json.array!(@markers) do |marker|
  json.extract! marker, :id, :name, :description, :locationx, :locationy, :ownerid
  json.url marker_url(marker, format: :json)
end
