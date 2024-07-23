class Role < ActiveRecord::Base
  has_many :auditions

  def actors
    auditions.pluck(:actor)
  end

  def locations
    auditions.pluck(:loacation)
  end

end
