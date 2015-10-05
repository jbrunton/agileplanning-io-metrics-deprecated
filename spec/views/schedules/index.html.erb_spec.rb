require 'rails_helper'

RSpec.describe "schedules/index", type: :view do
  before(:each) do
    assign(:schedules, [
      Schedule.create!(
        :frequency => 1,
        :title => "Title",
        :recipients => "MyText"
      ),
      Schedule.create!(
        :frequency => 1,
        :title => "Title",
        :recipients => "MyText"
      )
    ])
  end

  it "renders a list of schedules" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
