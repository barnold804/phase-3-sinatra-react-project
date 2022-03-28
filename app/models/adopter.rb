class Adopter < ActiveRecord::Base
    has_many :comments
    has_many :animals, through: :comments
end