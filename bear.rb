class Bear
  attr_reader :name, :type


  def initialize(name, type)
    @name = name
    @type = type
    @belly = []
  end

  def bear_roar
    return "ROAAAAAR!"
  end

  def fishes_belly_count()
    return @belly.length()
  end

  def eat_fishes(fish)
    @belly << fish
  end

  def empty()
    @belly.clear()
  end

  def eat_from_river(river)
    for fish in river.fishes()
      eat_fishes(fish)
    end
    river.clear_fishes()
  end








end
