require_relative "../models/meal"
require_relative "../views/meals_view"

class MealsController
  def initialize(meal_repository)
    @meal_repository = meal_repository
    @meals_view = MealsView.new
  end

  def add
    name = @meals_view.ask_user_for("name")
    price = @meals_view.ask_user_for("price").to_i
    @meal_repository.create(Meal.new(name: name, price: price))
    display_meals
  end
end