require 'rails_helper'

RSpec.describe "schedules/edit", type: :view do
  before(:each) do
    @schedule = assign(:schedule, Schedule.create!(
      :frequency => 1,
      :title => "MyString",
      :recipients => "MyText"
    ))
  end

  it "renders the edit schedule form" do
    render

    assert_select "form[action=?][method=?]", schedule_path(@schedule), "post" do

      assert_select "input#schedule_frequency[name=?]", "schedule[frequency]"

      assert_select "input#schedule_title[name=?]", "schedule[title]"

      assert_select "textarea#schedule_recipients[name=?]", "schedule[recipients]"
    end
  end
end
