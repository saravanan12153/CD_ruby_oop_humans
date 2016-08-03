class Human
    attr_accessor :strength, :intelligence, :stealth, :health

    def initialize
        @health = 100
        @strength = 15
        @stealth = 15
        @intelligence = 15
    end
    def display_health
        puts health
    end
    def attack(obj)
    if obj.class.ancestors.include?(Human)
        obj.health -= 10
        true
    else
        false
    end
    end
end
