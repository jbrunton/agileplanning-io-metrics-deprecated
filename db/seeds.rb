# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

team = Team.create(name: 'My Team')

surveys = [
    Survey.create(title: 'Test Survey', team: team, created_at: 21.days.ago),
    Survey.create(title: 'Test Survey', team: team, created_at: 14.days.ago),
    Survey.create(title: 'Test Survey', team: team, created_at: 7.days.ago)
]

surveys.each do |survey|
  3.times do
    response = Response.build_for(survey)
    response.answers.each do |answer|
      answer.answer = ['good', 'bad', 'meh'][3 % (rand(3) + 1)]
    end
    response.save!
  end
end