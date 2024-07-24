class Role < ActiveRecord::Base
  has_many :auditions
  has_many :actors, through: :auditions

  def locations
    auditions.pluck(:location)
  end

  def lead
    hired.first || "no actor has been hired for this role"
  end

  def understudy
    hired.second || "no actor has been hired for understudy for this role"
  end

  def self.most_auditions
    joins(:auditions)
      .group("roles.id")
      .order("COUNT(auditions.id) DESC")
      .first
  end

  def self.all_actors
    Actor.joins(:roles).distinct
  end

  private

  def hired
    auditions.where(hired: true)
  end
end
