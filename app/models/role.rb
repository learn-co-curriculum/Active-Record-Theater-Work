class Role < ActiveRecord::Base
  has_many :auditions

  def actors
    auditions.pluck(:actor)
  end

  def locations
    auditions.pluck(:location)
  end

  def lead
    hired.first || "no actor has been hired for this role"
  end

  def understudy
    hired.second || "no actor has been hired for understudy for this role"
  end

  private

  def hired
    auditions.where(hired: true)
  end
end
