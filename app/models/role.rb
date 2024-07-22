class Role < ActiveRecord::Base
  has_many :auditions

  def actors
    auditions.pluck(:actor)
  end

  def locations
    auditions.pluck(:location)
  end

  def lead
    lead_role = auditions.find_by(hired: true)&.actor
    if lead_role
      lead_role
    else
      "No actor has been hired for this role"
    end
  end

  def understudy
    hired_leads = auditions.where("hired = true")
    hired_leads.second.actor
  end
end
