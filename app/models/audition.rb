class Audition < ActiveRecord::Base
  belongs_to :role
  belongs_to :actor

  def call_back
    update(hired: true)
  end
end
