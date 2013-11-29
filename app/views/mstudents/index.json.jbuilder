json.array!(@mstudents) do |mstudent|
  json.extract! mstudent, :fname, :lname
  json.url mstudent_url(mstudent, format: :json)
end
