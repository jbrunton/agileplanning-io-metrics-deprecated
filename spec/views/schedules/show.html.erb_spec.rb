require 'rails_helper'

RSpec.describe "schedules/show", type: :view do
  before(:each) do
    @schedule = assign(:schedule, create(:schedule))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Schedule \d+/)
    expect(rendered).to match(/recipient\d+@example\.com/)
  end
end
