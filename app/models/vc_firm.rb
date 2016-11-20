class VcFirm < ApplicationRecord
  has_many :stages
  has_many :rounds
  has_many :startups, through: :rounds
  has_many :founders, through: :startups
  mount_uploader :logo, PhotoUploader

  validates :name, presence: true, uniqueness: true
end
