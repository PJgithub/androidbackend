json.array!(@people) do |person|
  json.extract! person, :id, :picture, :firstname, :lastname, :username, :password
  json.url person_url(person, format: :json)
end
