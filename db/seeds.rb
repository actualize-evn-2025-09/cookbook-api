require 'faker'

# recipe = Recipe.create(
#   title: "Butter Chicken",
#   chef: "Leon",
#   ingredients: "Butter and chicken",
#   directions: "Cook everything",
#   image_url: "butter-chicken.jpg",
#   prep_time: 120
# )

i = 1
100.times do
  Recipe.create(
    title: Faker::Food.dish,
    chef: Faker::Name.name,
    prep_time: i + 10
  )
  i += 1
end

puts "Successfully created 10 recipes."
