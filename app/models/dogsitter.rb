class Dogsitter < ApplicationRecord
  has_many :strolls
  belongs_to :city
  has_and_belongs_to_many :dogs, through: :strolls
end
