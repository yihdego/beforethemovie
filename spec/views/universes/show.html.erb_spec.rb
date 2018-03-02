require 'rails_helper'

RSpec.describe "universes/show", type: :view do
  before(:each) do
    @universe = assign(:universe, Universe.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
