
class Ingredient

    attr_reader  :ingredient

    @@all = [ ]
    def initialize(ingredient)
        @ingredient = ingredient
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_common_allergen
        
        most_common = Allergy.all.inject(Hash.new(0)) { |total, e| 
        
        total[e.ingredient] += 1; total } 

        max = most_common.key(most_common.values.max)
        # most_common.max_by { |ingredient, number| number}
        binding.pry
    end
end
