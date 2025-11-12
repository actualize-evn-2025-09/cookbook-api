class CreateChefs < ActiveRecord::Migration[8.0]
  def change
    create_table :chefs do |t|
      t.string :name

      t.timestamps
    end
  end
end
