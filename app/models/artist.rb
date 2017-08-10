class Artist < ApplicationRecord
  include UidGenerator
  has_and_belongs_to_many :albums
end
