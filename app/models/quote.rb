class Quote < ApplicationRecord
  validates :author, presence: true
  validates :content, presence: true

  scope :search, -> (keyword){ where("author like ?", "%#{keyword}%") }
end
