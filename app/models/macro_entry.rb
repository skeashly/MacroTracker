class MacroEntry < ApplicationRecord
  belongs_to :user

  #validations
  validates :protein, :fat, :carbs, :step_count, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
  validates :date, presence: true
  validates :notes, length: { maximum: 500 }, allow_blank: true
end
