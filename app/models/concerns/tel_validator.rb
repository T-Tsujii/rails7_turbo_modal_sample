class TelValidator < ActiveModel::EachValidator
  VALID_REGEX = /\A[\d\-+\s()]{10,18}$\z/

  def validate_each(record, attribute, value)
    return if value.blank?
    return if value =~ VALID_REGEX

    record.errors.add(attribute, attribute)
  end
end
