class AccountsController < ApplicationController
  
  def create
    Account.create do |account|
      account.site = Site.find(params["site"]["id"])
      account.login = params["account"]["login"]
      account.password = params["account"]["password"]
      account.author = params["account"]["author"]
    end if params["account"] and params["site"]
    redirect_to '/'
  end
  
  def feedback
    render :text => ''
  end
  
end
