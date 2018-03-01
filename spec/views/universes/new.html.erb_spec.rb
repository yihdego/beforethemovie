require 'rails_helper'

RSpec.describe "universes/new", type: :view do
  before(:each) do
    assign(:universe, Universe.new())
  end

  it "renders new universe form" do
    render

    assert_select "form[action=?][method=?]", universes_path, "post" do
    end
  end
end
