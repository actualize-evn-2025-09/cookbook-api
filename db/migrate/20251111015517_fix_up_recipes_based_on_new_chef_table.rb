class FixUpRecipesBasedOnNewChefTable < ActiveRecord::Migration[8.0]
  def change
    # remove the chef column from the recipes table
    # add the chef_id to the recipes table
    remove_column :recipes, :chef, :string
    add_column :recipes, :chef_id, :integer
  end
end
