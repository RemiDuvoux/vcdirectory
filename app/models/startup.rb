class Startup < ApplicationRecord
  has_many :vc_firms, through: :rounds
  has_many :founders
end