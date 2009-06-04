class Site < ActiveRecord::Base
  
  has_many :accounts
  
  def name
    match = Site.parse(url)
    return url unless match
    match[:domain].humanize
  end
  
  def self.parse(url)
    return nil unless url
    match = url.match(/http:\/\/(?:www\.)?(.+?)(?:\/|$)/i)
    return nil unless match
    full_url = "http://#{match[1]}"
    {:domain => match[1], :full_url => full_url}
  end
  
end
