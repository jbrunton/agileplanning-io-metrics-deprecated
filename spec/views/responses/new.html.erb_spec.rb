require 'rails_helper'

RSpec.describe "responses/new", type: :view do
  before(:each) do
    assign(:survey, Survey.create!(title: 'Some Survey'))
    assign(:response, Response.new(
      :survey => nil
    ))
  end

  it "renders new response form" do
    render

    # TODO: test this properly
  end
end
