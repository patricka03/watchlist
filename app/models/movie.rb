class Movie < ApplicationRecord
  validates :title, presence: true
  validates :genre, presence: true, length: { maximum: 50 }
  validates :year, presence: true
  validate :future_year_check
  has_one_attached :photo

  private

  def future_year_check
    if year.present? && year > Date.today.year
      errors.add(:year, "Date can not be in the future")
    end
  end
end
