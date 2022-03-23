class Role < ActiveRecord::Base
  has_many :auditions

  def all_auditions
    self.auditions
  end

  def all_actors
    self.auditions.map {|audition| audition.actor }
  end

  def all_actors_location
    self.auditions.map {|audition| audition.location }
  end

  def lead
    lead = auditions.find { |audition|audition.hired }
    if (lead == nil)
      puts "no actor has been hired for this role"
    else 
      lead
    end  
  end

  def understudy
    array_of_hired = auditions.filter { |audition|audition.hired = true }
    second_instance = array_of_hired[1]
    if (second_instance.hired == true)
      second_instance
    else
      puts "no actor has been hired for understudy for this role"
    end
  end

end



# Role.first.auditions.where("hired = true")



# lead = auditions.filter { |audition|audition.hired = true }