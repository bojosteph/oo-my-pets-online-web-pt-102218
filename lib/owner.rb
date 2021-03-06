class Owner
  attr_accessor  :name, :pets
  attr_reader :species
 @@all = []
  
  def initialize(species)
    @species = species
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
    
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.size
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def say_species
    "I am a #{species}."
  end
  
  def buy_fish(name)
    fish = Fish.new(name)
    pets[:fishes] << fish
  end
  
  def buy_cat(name)
    cat = Cat.new(name)
    pets[:cats] << cat
  end
  
  def buy_dog(name)
    dog = Dog.new(name)
    pets[:dogs] << dog
  end
  
  def walk_dogs
    pets[:dogs].collect { |dog| dog.mood = "happy"}
  end
  
  def play_with_cats
    pets[:cats].collect { |cat| cat.mood = "happy"}
  end
  
  def feed_fish
    pets[:fishes].collect { |fish| fish.mood = "happy"}
  end
  
  def sell_pets
    pets.each do |type, pets|
      pets.map {|pet| pet.mood = "nervous"}
    end
    pets.clear
  end
  
  def list_pets
    "I have #{pets[:fishes].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)."
  end
  
end