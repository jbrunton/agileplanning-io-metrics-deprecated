json.array!(@responses) do |response|
  json.extract! response, :id, :survey_id
  json.url response_url(response, format: :json)
end
