require 'rails_helper'

RSpec.describe "surveys/new", type: :view do
  before(:each) do
    @team = assign(:team, create(:team))
    assign(:survey, build(:survey, team: @team))
  end

  it "renders new survey form" do
    render

    assert_select "form[action=?][method=?]", team_surveys_path(@team), "post" do

      assert_select "input#survey_title[name=?]", "survey[title]"
    end
  end
end
