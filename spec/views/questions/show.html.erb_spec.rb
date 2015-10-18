require 'rails_helper'

RSpec.describe "questions/show", type: :view do
  before(:each) do
    @question = assign(:question, create(:question))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Question \d+/)
    expect(rendered).to match(/Question \d+ description/)
  end
end
