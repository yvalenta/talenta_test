class Region < ApplicationRecord
  has_and_belongs_to_many :municipios
	has_many :asociations
  has_many :municipios, through: :asociations
end
