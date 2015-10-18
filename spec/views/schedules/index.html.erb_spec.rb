require 'rails_helper'

RSpec.describe "schedules/index", type: :view do
  before(:each) do
    assign(:schedules, [
            create(:schedule),
            create(:schedule)
    ])
  end

  it "renders a list of schedules" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => /Schedule \d+/, :count => 2
    assert_select "tr>td", :text => /recipient\d+@example.com/, :count => 2
  end
end
