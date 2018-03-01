require 'rails_helper'

RSpec.describe Universe, type: :model do
  mcu = Universe.create!(name: "Marvel Cinematic Universe", blurb: "The Marvel Cinematic Universe (MCU) is an American media franchise and shared universe that is centered on a series of superhero films, independently produced by Marvel Studios and based on characters that appear in American comic books published by Marvel Comics.")
  context 'attributes' do
    it 'has a name' do
      expect(mcu.name).to eq "Marvel Cinematic Universe"
    end
    it 'has a blurb' do
      expect(mcu.blurb).to eq "The Marvel Cinematic Universe (MCU) is an American media franchise and shared universe that is centered on a series of superhero films, independently produced by Marvel Studios and based on characters that appear in American comic books published by Marvel Comics."
    end
  end
end
