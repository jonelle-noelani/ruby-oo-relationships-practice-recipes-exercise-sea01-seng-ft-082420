class User
    attr_reader  :allergy

    @@all = [ ]

    def initialize
        @@all << self
    end

    def self.all
        @@all
    end

    def declare_allergy(ingredient)
        Allergy.new(self, ingredient)
    end

    def allergens
        Allergy.all.select do |allergy| 
            allergy.user == self
        end
    end

end