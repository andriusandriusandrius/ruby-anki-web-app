class User < ApplicationRecord
  has_many :decks, dependent: :destroy

  has_secure_password

  validates :email, uniqueness: { case_sensitive:false } , presence: true, format: {with: URI::MailTo::EMAIL_REGEXP}
  validates :password, length: {minimum: 8}, allow_nil: true
  validates :name, presence: true
end
