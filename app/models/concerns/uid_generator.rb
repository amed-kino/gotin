module UidGenerator

  extend ActiveSupport::Concern
  included do
    before_create :uid_generate
    self.primary_key = 'uid'    
    default_scope { order(created_at: :asc) }
  end
  def uid_generate (length = 9)
    unless length.to_i.between?(1,256)
      raise 'Unique id E[1,256]'
    end
    range = [*'0'..'9',*'A'..'Z',*'a'..'z']
      Array.new(length){ range.sample }.join
      self.uid = Array.new(length){ range.sample }.join
  end
end
