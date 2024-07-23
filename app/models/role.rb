class Role < ActiveRecord::Base
  has_many :auditions

  def actors
    auditions.pluck(:actor)
  end

  def locations
    auditions.pluck(:loacation)
  end

  def lead
    hired_auditions = auditions.where(hired: true)
    auditions.where(hired: true).first || "no actor has been hired for this role"
  end

  def understudy
    hired_auditions = auditions.where(hired: true)
    auditions.where(hired: true).second || 'no actor has been hired for understudy for this role'
  end
end
