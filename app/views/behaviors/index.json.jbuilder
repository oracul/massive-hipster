json.array!(@behaviors) do |behavior|
  json.extract! behavior, :behavior, :intervention
  json.url behavior_url(behavior, format: :json)
end
