class Movie < ApplicationRecord
  belongs_to :universe, optional: true
end
