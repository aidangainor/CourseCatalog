json.array!(@courses) do |course|
  json.extract! course, :id, :id, :code, :name, :description, :term
  json.url course_url(course, format: :json)
end
