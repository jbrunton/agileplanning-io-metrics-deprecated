class Team < ActiveRecord::Base
  has_many :surveys

  def trend_for(question)
    surveys.map do |survey|
      survey.answers.
          select{ |a| a.question == question }.
          map{ |a| [survey.created_at, a.rating] }.
          first
    end
  end
end
