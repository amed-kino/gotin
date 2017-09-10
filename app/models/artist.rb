class Artist < ApplicationRecord
  include UidGenerator

  has_and_belongs_to_many :albums
  has_many :album_artist_contributes
  has_many :contributes,
            through: :album_artist_contributes,
            source: :album,
            foreign_key: 'contribute_id'

  validates :name, presence: true
  validates :name, length: {minimum: 2, maximum: 64}, string: true
end
