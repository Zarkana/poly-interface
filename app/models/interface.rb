class Interface < ApplicationRecord
  has_many :sections
  validates :name, presence: true, length: { minimum: 5 }
end
