class Album < ApplicationRecord
  include UidGenerator
  has_and_belongs_to_many :artists
end
