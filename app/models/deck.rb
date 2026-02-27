class Deck < ApplicationRecord
  belongs_to :user
  has_many :card, dependent: :destroy
end
