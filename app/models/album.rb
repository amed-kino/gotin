class Album < ApplicationRecord
  include UidGenerator
  has_and_belongs_to_many :artists
  # validates :title, presence: true
  validates :title, length: {minimum: 2, maximum: 64}, string: true
  validates :year, allow_blank: true, length: {is: 4}
end
