require 'rails_helper'

RSpec.describe Movie, type: :model do
  mcu = Universe.create!(name: "Marvel Cinematic Universe", blurb: "The Marvel Cinematic Universe (MCU) is an American media franchise and shared universe that is centered on a series of superhero films, independently produced by Marvel Studios and based on characters that appear in American comic books published by Marvel Comics.")
  ironman = Movie.create!(title: "Iron Man", summary: "After being held captive in an Afghan cave, billionaire engineer Tony Stark creates a unique weaponized suit of armor to fight evil.", release: "May 2 2008", universe: mcu)
  context 'attributes' do
    it 'has a title' do
      expect(ironman.title).to eq "Iron Man"
    end
    it 'has a blurb' do
      expect(ironman.summary).to eq "After being held captive in an Afghan cave, billionaire engineer Tony Stark creates a unique weaponized suit of armor to fight evil."
    end
    it 'has a release date' do
      expect(ironman.release).to eq (Date.parse('2008-05-02'))
    end
  end
  context 'associations' do
    it 'belongs to a movie universe' do
      expect(ironman.universe).to eq mcu
    end
  end
end
