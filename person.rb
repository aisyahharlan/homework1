class Person
    def initialize (name,hitpoint,attack_damage)
        @name = name
        @hitpoint= hitpoint
        @attack_damage = attack_damage
    end

    attr_reader :name, :hitpoint, :attack_damage

    def to_s
        "#{@name} has #{@hitpoint} hitpoint and #{@attack_damage} attack_damage"
    end

    def attack(other_person)
        other_person.take_damage(@attack_damage)
        puts"#{name} attacks #{other_person.name} with #{@attack_damage} damage"
    end

    def take_damage(damage)
        @hitpoint -= damage
    end

    def die?
      if @hitpoint <= 0 
        puts"#{name} dies" 
        true
      end

    end

  
    

   
        
   
end