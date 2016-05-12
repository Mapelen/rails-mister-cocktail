class Ingredient < ActiveRecord::Base
  has_many :cocktail
  validates :name, presence: true, uniqueness: true
  has_many :doses, dependent: :destroy

end
