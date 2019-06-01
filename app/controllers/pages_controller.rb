class PagesController < ApplicationController
  before_action :all_members
  before_action  :authenticate_user!, only:[:panel]
  def index
    
  end
  def panel
     
  end
  def all_members
    @members = Member.all
  end

end
