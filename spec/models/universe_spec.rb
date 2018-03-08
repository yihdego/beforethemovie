require 'rails_helper'

RSpec.describe Universe, type: :model do
  mcu = Universe.create!(name: "Marvel Cinematic Universe", blurb: "The Marvel Cinematic Universe (MCU) is an American media franchise and shared universe that is centered on a series of superhero films, independently produced by Marvel Studios and based on characters that appear in American comic books published by Marvel Comics.")
  ironman = Movie.create!(title: "Iron Man", summary: "After being held captive in an Afghan cave, billionaire engineer Tony Stark creates a unique weaponized suit of armor to fight evil.", release: "May 2 2008", universe: mcu)
  context 'attributes' do
    it 'has a name' do
      expect(mcu.name).to eq "Marvel Cinematic Universe"
    end
    it 'has a blurb' do
      expect(mcu.blurb).to eq "The Marvel Cinematic Universe (MCU) is an American media franchise and shared universe that is centered on a series of superhero films, independently produced by Marvel Studios and based on characters that appear in American comic books published by Marvel Comics."
    end
  end
  context 'associations' do
    it 'has movie relations' do
      expect(mcu.movies).to exist
    end
    it 'has iron man in its movies database' do
      expect(mcu.movies).to include(ironman)
    end
  end
end
