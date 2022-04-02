class User < ApplicationRecord
  with_options presence: true do
    validates :email, uniqueness: true, email: true
    validates :name, :gender
  end

  validates :tel, tel: true
  validates :age, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 0,
    less_than_or_equal_to: 150
  }

  enum gender: {
    male: 10,
    female: 20,
    other: 99
  }
end
