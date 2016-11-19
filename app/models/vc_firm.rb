class VcFirm < ApplicationRecord
  has_many :stages
  has_many :rounds
  has_many :startups, through: :rounds
  has_many :founders, through: :startups
end
