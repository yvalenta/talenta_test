class Municipio < ApplicationRecord
  has_and_belongs_to_many :regiones
	has_many :asociations
  has_many :regiones, through: :asociations
end
