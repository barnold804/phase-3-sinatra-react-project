class Animal < ActiveRecord::Base
    belongs_to :shelter
    has_many :comments
    has_many :adopters, through: :comments
end