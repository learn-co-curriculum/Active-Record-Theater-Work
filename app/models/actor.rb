class Actor < ActiveRecord::Base
  has_many :auditions
  has_many :roles, through: :auditions

  def self.most_roles
    self.all.max_by { |actor| actor.roles.count }
  end

  def self.hired_roles
    Role.includes(:auditions).where(auditions: { hired: true })
  end
end
