class Artist < ApplicationRecord
  include UidGenerator

  before_create :set_id
  has_and_belongs_to_many :albums

  private
  def set_id
    uid_generate
  end
end
