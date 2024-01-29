class User < ApplicationRecord
  authenticates_with_sorcery!

  validates :email, uniqueness: true, length: { minimum: 3 }
  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
end
