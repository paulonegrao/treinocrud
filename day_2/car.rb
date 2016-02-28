class Car

def self.max_speed
  200
end

def initialize(model, type, capacity)
  @model = model
  @type = type
  @capacity = capacity
end
  def drive
    ignite_engine
    puts "drivando"
  end
  def stop
    puts "stopando"
  end
  def park
    puts "parkando"
  end
  private
  def pump_gas
    puts "dpumpando"
  end
  def ignite_engine
    puts "ingnando"
  end
end
