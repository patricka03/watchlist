class Content < ApplicationRecord
  validate :title, presence: true
  validate :genre, presence: true, length: { maximum: 50 }
  validate :year, presence: true
  validate future_year_check
  has_one_attached :photo

  private

  def future_year_check
    if year.present? && year > Date.today.year
      error.add(:year, "Date can not be in the future")
    end
  end
end
