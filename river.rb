class River
  attr_reader :name, :fishes


  def initialize(name)
    @name = name
    @fishes = []
  end

  def fishes_count()
    return @fishes.length()
  end

  def add_fishes(fish)
    @fishes << fish
  end

  def clear_fishes
    @fishes.clear
  end
















end
