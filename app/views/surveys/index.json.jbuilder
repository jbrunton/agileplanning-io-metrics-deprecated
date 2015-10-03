json.array!(@surveys) do |survey|
  json.extract! survey, :id, :title
  json.url survey_url(survey, format: :json)
end
