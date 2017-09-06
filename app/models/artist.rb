class Artist < ApplicationRecord
  include UidGenerator
  has_and_belongs_to_many :albums
  validates :name, presence: true
  validates :name, length: {minimum: 2, maximum: 64}, string: true
end
