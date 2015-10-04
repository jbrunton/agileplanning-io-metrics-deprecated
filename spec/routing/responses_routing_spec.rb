require "rails_helper"

RSpec.describe ResponsesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "surveys/1/responses").to route_to("responses#index", :survey_id => "1")
    end

    it "routes to #new" do
      expect(:get => "surveys/1/responses/new").to route_to("responses#new", :survey_id => "1")
    end

    it "routes to #create" do
      expect(:post => "surveys/1/responses").to route_to("responses#create", :survey_id => "1")
    end

  end
end
