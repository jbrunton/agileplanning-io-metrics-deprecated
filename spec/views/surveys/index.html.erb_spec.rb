require 'rails_helper'

RSpec.describe "surveys/index", type: :view do
  before(:each) do
    assign(:surveys, [
      Survey.create!(
        :title => "Title"
      ),
      Survey.create!(
        :title => "Title"
      )
    ])
  end

  it "renders a list of surveys" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
