class SiteController < ApplicationController
  
  def search
    address = params[:url]
    address =~ /http:\/\/(?:www\.)?(.+?)(?:\/|$)/
    domain = $1
    return unless $1
    puts 'found ' + $1
    site = Site.find_by_url($1)
    respond_to do |wants|
      wants.json {        
        render :json => site.accounts.map{|a| [a.login, a.password]}.to_json
      }
    end
    
  end
  
end
