# require 'faker'

# recipe = Recipe.create(
#   title: "Butter Chicken",
#   chef: "Leon",
#   ingredients: "Butter and chicken",
#   directions: "Cook everything",
#   image_url: "butter-chicken.jpg",
#   prep_time: 120
# )

# i = 1
# 100.times do
#   Recipe.create(
#     title: Faker::Food.dish,
#     chef: Faker::Name.name,
#     prep_time: i + 10
#   )
#   i += 1
# end

# puts "Successfully created 10 recipes."

Recipe.destroy_all
Chef.destroy_all

chef = Chef.create(name: "Jean")

Recipe.create([
  {title: "Raw Eggs", chef_id: chef.id, ingredients: "Chicken", directions: "Squeeze the chicken", image_url: "http://swansonhealthcenter.com/wp-content/uploads/2011/07/Egg.jpg", prep_time: 1},
  {title: "Empty Sandwich", chef_id: chef.id, ingredients: "Two slices of bread", directions: "Place slices of bread next to each other.", image_url: "http://www.phoenixisstrategic.com/wp-content/uploads/2013/05/blog-empty-sandwich.jpg", prep_time: 72},
  {title: "Licorice", chef_id: chef.id, ingredients: "Licorice", directions: "Buy licorice from store.", image_url: "http://cdn2.bigcommerce.com/server6200/aa739/product_images/uploaded_images/red-licorice.png?t=1398725710", prep_time: 120},
  {title: "Mud Pie", chef_id: chef.id, ingredients: "Flour, water, mud.", directions: "Mix flour and water, add mud, bake at 350 degrees for 1 hour.", image_url: "http://cdn-image.myrecipes.com/sites/default/files/styles/300x300/public/image/recipes/sl/05/12/mocha-mud-pie-sl-257949-x.jpg?itok=_ChocANl", prep_time: 84},
  {title: "Pizza", chef_id: chef.id, ingredients: "Flour, water, pepperoni, cheese", directions: "Mix flour and water, add cheese and pepperoni, shape as a heart, bake in oven on self-clean mode.", image_url: "http://twopizzapals.weebly.com/uploads/2/3/6/0/23602608/1338890_orig.jpg", prep_time: 455},
  {title: "Corn on the cob", chef_id: chef.id, ingredients: "Corn, cob", directions: "Place corn on the cob, grill for 20 minutes, enjoy!", image_url: "http://www.scientificamerican.com/sciam/cache/file/59C0122F-509C-4FEE-99A67FC20C50CEF1.jpg", prep_time: 22}
])