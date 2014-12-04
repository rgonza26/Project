json.array!(@mainevents) do |mainevent|
  json.extract! mainevent, :id, :name, :date, :description, :image
  json.url mainevent_url(mainevent, format: :json)
end
