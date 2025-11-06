require "test_helper"

class RecipeTest < ActiveSupport::TestCase
  test "ingredients_list" do
    recipe = Recipe.new(ingredients: "one, two, three")
    assert_equal ["one", "two", "three"], recipe.ingredients_list
  end

  test "directions_list" do
    recipe = Recipe.new(directions: "one, two, three")
    assert_equal ["one", "two", "three"], recipe.directions_list
  end

  test "friendly_created_at" do
    recipe = Recipe.new(created_at: "2025-11-05T01:34:27.224Z")
    assert_equal "Nov  5,  1:34 AM", recipe.friendly_created_at
  end

  test "friendly_prep_time" do
    recipe = Recipe.new(prep_time: 200)
    assert_equal "3 hours 20 minutes", recipe.friendly_prep_time
  end
end
