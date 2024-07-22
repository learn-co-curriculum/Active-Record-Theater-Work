class Role < ActiveRecord::Base
  has_many :auditions

  def actors
    auditions.map(&:actor)
  end

  def locations
    auditions.map(&:location)
  end

  def lead
    auditions.find_by(hired: true)
  end

  def under_study
    understudy = auditions.where(hired: true).second
    understudy || 'no actor has been hired for understudy for this role'
  end


end
