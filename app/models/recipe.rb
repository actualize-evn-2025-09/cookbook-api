class Recipe < ApplicationRecord
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
end
