class Station

  @@all = 0

  def initialize(name_station)
    @name_station = name_station
    @trains = {}
    @@all += 1
  end  

  def self.all
    @@all
  end  

  def arrival_train(number_train, type_train)
    @trains[number_train] = type_train
  end

  def list_trains_in_station
    sorted_trains = @trains.keys.each {|train| puts train}
    puts "Trains in the station: #{sorted_trains}"  
  end

  def list_trains_type(type_train)
    sort_trains = @trains.select{|number_train, type| type == type_train}
    sorted_trains = sort_trains.keys.each {|train| puts train}
    puts "Sorted trains in the station: #{sorted_trains}"
  end

  def departure_train(number_train)
    @trains.delete(number_train)
    puts "Train #{number_train} departed"
  end  
  
end
