class Role < ActiveRecord::Base
  has_many :auditions
  
  def actors
    self.auditions.map do |audition|
      audition.actor
    end
  end

  def locations
    self.auditions.map do |audition|
      audition.location
    end
  end

  def lead

    result = self.auditions.find do |audition|
      self.id == audition.role_id
    end

    if result.hired == true
      result
    else
      'no actor has been hired for this role'
    end

  end


  def understudy
  
    result = self.auditions.filter do |audition|
      self.id == audition.role_id
    end

    is_hired = result.map do |audition|
      audition.hired
    end

    if is_hired[1] == true
      result[1]
    else
      'no actor has been hired for understudy for this role'
    end

  end


end