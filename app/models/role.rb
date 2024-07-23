class Role < ActiveRecord::Base
  has_many :auditions

  def actors
    auditions.pluck(:actor)
  end

  def locations
    auditions.pluck(:loacation)
  end

  #lead returns the first instance of the audition that was hired for this role or returns a string 'no actor has been hired for this role'

  def lead
    hired_auditions = auditions.where(hired: true)
    auditions.where(hired: true).first || "no actor has been hired for this role"
  end

end
