class ChefsController < ApplicationController
  # What do you want the user to be able to do?
  def index
    @chefs = Chef.all

    render :index
  end

  def create
    @chef = Chef.new(
      name: params[:name]
    )

    if @chef.save
      render :show
    else
      render json: @chef.errors, status: :unprocessable_entity
    end
  end
end
