class Movie < ApplicationRecord
  belongs_to :universe, optional: true

  def add_universe(universe_id)
    universe = Universe.find(universe_id)
    self.universe = universe
  end
end
