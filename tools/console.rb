require_relative '../config/environment.rb'
u1 = User.new
u2 = User.new
u3 = User.new

i1 = Ingredient.new("tomatoes")
i2 = Ingredient.new("peppers")

a1 = Allergy.new(u1, i1)
a2 = Allergy.new(u2, i1)
a3 = Allergy.new(u3, i2)


binding.pry
