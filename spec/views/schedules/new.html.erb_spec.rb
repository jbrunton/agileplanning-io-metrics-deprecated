require 'rails_helper'

RSpec.describe "schedules/new", type: :view do
  before(:each) do
    assign(:schedule, build(:schedule))
  end

  it "renders new schedule form" do
    render

    assert_select "form[action=?][method=?]", schedules_path, "post" do

      assert_select "input#schedule_frequency[name=?]", "schedule[frequency]"

      assert_select "input#schedule_title[name=?]", "schedule[title]"

      assert_select "textarea#schedule_recipients[name=?]", "schedule[recipients]"
    end
  end
end
