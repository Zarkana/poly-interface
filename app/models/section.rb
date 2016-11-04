class Section < ApplicationRecord
  belongs_to :interface
  has_many :items
end
