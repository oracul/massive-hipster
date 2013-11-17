json.array!(@students) do |student|
  json.extract! student, :firstname, :lastname
  json.url student_url(student, format: :json)
end
