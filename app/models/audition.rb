class Audition < ActiveRecord::Base
  belongs_to :role

  def audition_role
    # binding.pry
    self.role.character_name
  end

  def hired
    self.hired = "true"
    self.save
  end

  
end