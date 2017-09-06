class StringValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless (value=~/^[a-zA-Z|1-9|ç|Ç|ê|Ê|î|Î|ş|Ş|û|Û]|\s+$/)
      record.errors[attribute] << (options[:message] || "is not Kurdish alphabit.")
    end
  end
end
