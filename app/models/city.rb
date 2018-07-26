class City < ApplicationRecord
  has_many :doggsitters
  has_many :dogs
end
