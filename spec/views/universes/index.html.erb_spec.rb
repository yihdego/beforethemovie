require 'rails_helper'

RSpec.describe "universes/index", type: :view do
  before(:each) do
    assign(:universes, [
      Universe.create!(),
      Universe.create!()
    ])
  end

  it "renders a list of universes" do
    render
  end
end
