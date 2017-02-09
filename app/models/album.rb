class Album < ApplicationRecord
  include UidGenerator
  
  before_create :set_id
  has_and_belongs_to_many :artists

  private
  def set_id
    uid_generate
  end

end
