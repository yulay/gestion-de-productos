json.extract! listado, :id, :marca, :modelo, :codigo, :fecha_fab, :precio, :observacion, :created_at, :updated_at
json.url listado_url(listado, format: :json)
