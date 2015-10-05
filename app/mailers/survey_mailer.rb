class SurveyMailer < ApplicationMailer
  def survey_email(survey, recipient)
    @survey = survey
    mail(to: recipient, title: survey.title)
  end
end
