class MacroEntry < ApplicationRecord
  belongs_to :user

  #validations
  validates :protein, :fat, :carbs, :step_count, :date, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :notes, length: { maximum: 500 }, allow_blank: true
end
