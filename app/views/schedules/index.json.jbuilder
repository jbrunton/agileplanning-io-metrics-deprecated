json.array!(@schedules) do |schedule|
  json.extract! schedule, :id, :start, :frequency, :title, :recipients, :last_sent
  json.url schedule_url(schedule, format: :json)
end
