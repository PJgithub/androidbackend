json.array!(@accessablemarkers) do |accessablemarker|
  json.extract! accessablemarker, :id, :markerid, :accesorid
  json.url accessablemarker_url(accessablemarker, format: :json)
end
