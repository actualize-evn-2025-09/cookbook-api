class RecipesController < ApplicationController
  def one_recipe
    @recipe = Recipe.first

    render template: "recipes/show"
  end

  def all_recipes
    @recipes = Recipe.all

    render template: "recipes/index"
  end
end
