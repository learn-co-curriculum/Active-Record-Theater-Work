class Actor < ActiveRecord::Base
  has_many :auditions
  has_many :roles, through: :auditions

  def self.most_roles
    joins(:auditions)
      .group("actors.id")
      .order("COUNT(actors.id) DESC")
      .first
  end

  def self.hired_roles
    Role.joins(:auditions)
        .where(auditions: { hired: true })
  end
end
