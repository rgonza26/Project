json.array!(@main_sites) do |main_site|
  json.extract! main_site, :id
  json.url main_site_url(main_site, format: :json)
end
