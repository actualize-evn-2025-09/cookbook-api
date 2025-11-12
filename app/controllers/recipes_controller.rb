class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all

    render :index
    # render json: @recipes
  end

  def show
    @recipe = Recipe.find(params[:id])

    render :show
  end

  def create
    @recipe = Recipe.new(
      title: params[:title],
      image_url: params[:image_url],
      prep_time: params[:prep_time],
      ingredients: params[:ingredients],
      directions: params[:directions],
      chef_id: params[:chef_id]
    )

    if @recipe.save
      render :show, status: :created
    else
      render json: { errors: @recipe.errors }, status: :unprocessable_entity
    end
  end

  def update
    @recipe = Recipe.find(params[:id])

    @recipe.update(
      title: params[:title] || @recipe.title,
      image_url: params[:image_url] || @recipe.image_url,
      prep_time: params[:prep_time] || @recipe.prep_time,
      ingredients: params[:ingredients] || @recipe.ingredients,
      directions: params[:directions] || @recipe.directions,
      chef_id: params[:chef_id] || @recipe.chef_id
    )

    if @recipe.valid?
      render :show
    else
      render json: { errors: @recipe.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])

    @recipe.destroy

    render json: { message: "Recipe deleted..." }
  end
end
