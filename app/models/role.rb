class Role < ActiveRecord::Base
  has_many :auditions
  has_many :actors, through: :auditions

  def locations
    auditions.pluck(:location)
  end

  def lead
    auditions.find_by(hired: true)&.actor || "no actor has been hired for this role"
  end

  def understudy
    auditions.where(hired: true).second&.actor || "no actor has been hired for understudy of this role"
  end

  def self.most_auditions
    self.all.max_by { |role| role.auditions.count }
  end

  def self.all_actors
    all.flat_map do |role|
      role.actors
    end.uniq
  end
end
