json.array!(@interventions) do |intervention|
  json.extract! intervention, :sfname, :slname, :intervention
  json.url intervention_url(intervention, format: :json)
end
