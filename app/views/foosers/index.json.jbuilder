json.array!(@foosers) do |fooser|
  json.extract! fooser, :name, :email, :gender
  json.url fooser_url(fooser, format: :json)
end