json.extract! datum, :id, :name, :description, :created_at, :updated_at
json.url datum_url(datum, format: :json)
