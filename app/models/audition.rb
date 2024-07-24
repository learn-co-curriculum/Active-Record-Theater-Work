class Audition < ActiveRecord::Base
  belongs_to :role
  belongs_to :actor

  def call_back
    update(hired: true)
  end

  def fire
    update(hired: false)
  end

  def self.hired
    where(hired: true)
  end

  def self.not_hired
    where(hired: false)
  end
end
