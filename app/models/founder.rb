class Founder < ApplicationRecord
  belongs_to :startup
  has_many :rounds, through: :startup
  has_many :vc_firms, through: :rounds
end
