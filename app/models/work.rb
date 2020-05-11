class Work < ApplicationRecord
  has_and_belongs_to_many :authors

  scope :books, -> { where(type: 'Book') }
  scope :magazines, -> { where(type: 'Magazine') }
end
