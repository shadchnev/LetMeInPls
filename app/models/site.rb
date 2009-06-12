class Site < ActiveRecord::Base
  
  has_many :accounts
  
  def name
    domain.humanize
  end
  
      
end
