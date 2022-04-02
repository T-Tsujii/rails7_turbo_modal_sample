class EmailValidator < ActiveModel::EachValidator
  VALID_REGEX = /\A[\w+-.]+@[a-z\d\-.]+.[a-z]+\z/i

  def validate_each(record, attribute, value)
    return if value.nil?
    return if value.blank?
    return if value =~ VALID_REGEX

    record.errors.add(attribute, attribute)
  end
end
