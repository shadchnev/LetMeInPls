class SitesController < ApplicationController
  
  def search
    domain = params["url"].domain if params["url"]
    render :text => '' and return unless domain
    site = Site.find_by_domain(domain)
    render :text => '' and return unless site
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
    domain = params["site"]["domain"].domain if params["site"]["domain"]
    Site.create do |site|
      site.domain = domain
    end if domain
    redirect_to '/'
  end
  
end
