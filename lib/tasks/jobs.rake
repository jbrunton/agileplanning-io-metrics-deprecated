desc 'Send recurring emails'
task :send_surveys => :environment do
  Schedule.all.each do |schedule|
    if schedule.last_sent.nil? || (DateTime.now - schedule.last_sent.to_datetime).to_f > schedule.frequency
      survey_title = DateTime.now.strftime("#{schedule.title} – %-d %B")
      survey = Survey.create!(title: survey_title)
      schedule.recipients.split(',').map{|s| s.strip}.each do |recipient|
        SurveyMailer.survey_email(survey, recipient).deliver_now
      end
      schedule.last_sent = DateTime.now
      schedule.save
    end
  end
end