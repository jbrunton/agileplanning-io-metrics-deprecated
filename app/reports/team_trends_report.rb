class TeamTrendsReport
  attr_reader :team

  def initialize(team)
    @team = team
  end

  def questions
    @questions ||= @team.surveys.
        map{ |survey| survey.questions }.
        flatten.
        uniq
  end

  def surveys
    @team.surveys
  end

  def aggregate_rating_for(question, survey)
    survey_reports[survey].aggregate_rating_for(question)
  end

private

  def survey_reports
    @survey_reports ||= @team.surveys.
        map{ |survey| [survey, SurveyReport.new(survey)] }.
        to_h
  end
end