class Flat < ApplicationRecord
  def self.search(query)
    if query
      self.where('name LIKE ?', "%#{query}%")
    else
      self.all
    end
  end

  validates :name, presence: true
end
