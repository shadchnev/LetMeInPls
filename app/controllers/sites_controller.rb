class SitesController < ApplicationController
  
  def search
    address = params[:url]
    match = Site.parse(address)
    render :text => '' and return unless match
    site = Site.find_by_url(match[:full_url])
    data = []
    site.accounts.each do |account|
      data << {:id => account.id, :login => account.login, :password => account.password}
    end if site
    respond_to do |wants|
      wants.json {        
        render :json => data.to_json
      }
    end    
  end
  
  def create
    Site.create do |site|
      site.url = params["site"]["url"]      
    end if params["site"]["url"]
    redirect_to '/'
  end
  
end
