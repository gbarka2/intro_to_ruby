
class Fighter
  attr_reader :name
  attr_accessor :defense, :strength, :luck, :life
  def initialize(name, defense, strength, luck, life)
    @name = name
    @defense = defense
    @strength = strength
    @luck = luck
    @life = life
    
  end
  def attack(opponent)
    damage = @strength - opponent.defense
    if damage <= 0
      p "#{name} could not do damage to #{opponent.name}!"
    else 
      opponent.life = opponent.life - damage
      p "#{opponent.name} took #{damage} hit! #{opponent.name} has #{opponent.life} hit points remaining."
    end
  end
  def welcome
  end
end

class Dojo
  def fight_wild_pokemon(player)
    player.strength += 1
    p "#{player.name}'s strength increased to #{player.strength}!"
  end
  def eat_rare_candy(player)
    player.defense += 1
    p "#{player.name}'s defense increased to #{player.defense}!"
  end
  def battle_trainers(player)
    player.strength += 3
    p "#{player.name}'s strength increased to #{player.strength}!"
  end
end

p "Welcome to Pokemon Dojo! Choose your Pokemon!"
player = Fighter.new("Gyrados", 0, 0, 0, 100)
opponent = Fighter.new("Jolteon", 4, 4, 4, 100)
dojo = Dojo.new()

p "Hello #{player.name}! Battle wild pokemon, collect rare candies, and train with others to prepare for battle with your opponent #{opponent.name}! #{opponent.name} is an experienced Pokemon, so be ready for a long battle!"

training = 0
while training <= 10
  dojo.eat_rare_candy(opponent)
  dojo.battle_trainers(player)
  training += 1
  dojo.eat_rare_candy(opponent)
  dojo.battle_trainers(player)
  training += 1
  dojo.battle_trainers(opponent)
  dojo.eat_rare_candy(player)
  training += 1
  dojo.fight_wild_pokemon(opponent)
  dojo.eat_rare_candy(player)
  training += 1
  dojo.battle_trainers(opponent)
  dojo.eat_rare_candy(player)
  training += 1
  dojo.fight_wild_pokemon(opponent)
  dojo.fight_wild_pokemon(player)
  training += 1
  dojo.eat_rare_candy(opponent)
  dojo.fight_wild_pokemon(player)
  training += 1
  dojo.fight_wild_pokemon(opponent)
  dojo.fight_wild_pokemon(player)
  training += 1
  dojo.battle_trainers(opponent)
  dojo.fight_wild_pokemon(player)
  training += 1
  dojo.eat_rare_candy(opponent)
  dojo.fight_wild_pokemon(player)
  training += 1
end

p "Phew! 10 weeks of training! Think you're ready? #{opponent.name} has been training too, it's stats are: defense: #{opponent.defense}, strength: #{opponent.strength}, luck: #{opponent.luck}. Good luck! May the best Pokemon win!"

while true
  if opponent.life > 0
    opponent.attack(player)
  end
  if player.life > 0
    player.attack(opponent)
  end

  if player.life <= 0
    p "#{opponent.name} has won the battle! Time to re-train!"
    break
  end
  if opponent.life <= 0
    p "Congratulations! #{player.name} has won the battle!"
    break
  end
end

