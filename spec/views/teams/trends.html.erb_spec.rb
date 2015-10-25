require 'rails_helper'

RSpec.describe "teams/trends", type: :view do
  before(:each) do
    @team = assign(:team, create(:team, name: 'Some Team'))
    assign(:trends_report, TeamTrendsReport.new(@team))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Trends for Some Team/)
  end
end
