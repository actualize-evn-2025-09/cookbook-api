class Recipe < ApplicationRecord
  validates :title, presence: { message: "Email address cannot be blank." }
  validates :prep_time, numericality: { greater_than: 0 }

  validate :ingredients_and_directions_presence

  def ingredients_list
    ingredients.split(", ")
  end

  def directions_list
    directions.split(", ")
  end

  def friendly_created_at
    created_at.strftime("%b %e, %l:%M %p")
  end

  def friendly_prep_time
    hours = prep_time / 60 # hours = 1
    minutes = prep_time % 60 # minutes = 12
    result = ""
    result += "#{hours} hours " if hours > 0 # add the hours into the result string if hours isn't 0
    result += "#{minutes} minutes" if minutes > 0 # add the minutes into the result string if minutes isn't 0
  end

  private

  def ingredients_and_directions_presence
    if ingredients.blank? && directions.blank?
      errors.add(:base, "ingredients and directions must be present")
      # errors.add(:ingredients, "ingredients must be present")
      # errors.add(:directions, "directions must be present")
    end
  end
end
