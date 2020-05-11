class Author < ApplicationRecord
  has_and_belongs_to_many :works

  delegate :books, to: :works
  delegate :magazines, to: :works
end
