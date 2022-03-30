class User < ApplicationRecord
  with_options presence: true do
    validates :email, uniqueness: true
    validates :name, :gender
  end

  enum gender: {
    male: 10,
    female: 20,
    other: 99
  }
end
