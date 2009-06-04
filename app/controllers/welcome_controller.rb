class WelcomeController < ApplicationController
  
  def index
    @sites = Site.all
    @site = Site.new
    @account = Account.new
  end
  
end
