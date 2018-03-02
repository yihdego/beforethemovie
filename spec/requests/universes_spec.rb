require 'rails_helper'

RSpec.describe "Universes", type: :request do
  describe "GET /universes" do
    it "works! (now write some real specs)" do
      get universes_path
      expect(response).to have_http_status(200)
    end
  end
end
