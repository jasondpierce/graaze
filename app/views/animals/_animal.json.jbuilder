json.extract! animal, :id, :tag_number, :breed, :dob, :color, :created_at, :updated_at
json.url animal_url(animal, format: :json)
