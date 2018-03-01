require 'rails_helper'

RSpec.describe "universes/edit", type: :view do
  before(:each) do
    @universe = assign(:universe, Universe.create!())
  end

  it "renders the edit universe form" do
    render

    assert_select "form[action=?][method=?]", universe_path(@universe), "post" do
    end
  end
end
