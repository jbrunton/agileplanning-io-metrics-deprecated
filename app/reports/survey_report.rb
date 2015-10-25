class SurveyReport
  attr_reader :survey

  def initialize(survey)
    @survey = survey
  end

  def questions
    @questions ||= @survey.responses.
        map{ |response| response.questions }.
        flatten.
        uniq
  end

  def answers_for(question)
    answers_by_question[question]
  end

  def aggregate_rating_for(question)
    ratings = ratings_by_question[question]
    ratings.reduce(:+) / ratings.length
  end

private
  def answers_by_question
    @answers_by_question ||= @survey.answers.
        group_by{ |answer| answer.question }.
        map{ |question, answers| [question, answers.sort_by{ |answer| answer.response.created_at }] }.
        to_h
  end

  def ratings_by_question
    @ratings_by_question ||= answers_by_question.
        map{ |question, answers| [question, answers.map{ |a| a.rating }] }.
        to_h
  end
end