class Chef < ApplicationRecord
  def recipes
    Recipe.where(chef_id: id)
  end
end

# find and find_by - returns 1 object (the first object where that condition is true)
# where - returns all of the object where a condition is true