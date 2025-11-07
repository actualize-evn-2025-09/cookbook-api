require "test_helper"
# minitest
class RecipesControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/recipes.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Recipe.count, data.count
  end

  test "show" do
    get "/recipes/#{Recipe.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal [ "id", "title", "chef", "ingredients", "directions", "image_url", "prep_time", "created_at", "updated_at" ], data.keys
  end

  test "create" do
    assert_difference "Recipe.count", 1 do
      post "/recipes.json", params: { title: "Cake", chef: "Peter", image_url: "test.jpg", prep_time: 10, ingredients: "Batter", directions: "Bake" }
      assert_response 201
    end

    assert_difference "Recipe.count", 0 do
      post "/recipes.json", params: {}
      assert_response 422
    end
  end

  test "update" do
    recipe = Recipe.first
    put "/recipes/#{recipe.id}.json", params: { title: "Updated title" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated title", data["title"]

    put "/recipes/#{recipe.id}.json", params: { title: "" }
    assert_response 422
  end

  test "destroy" do
    assert_difference "Recipe.count", -1 do
      delete "/recipes/#{Recipe.first.id}.json"
      assert_response 200
    end
  end
end
