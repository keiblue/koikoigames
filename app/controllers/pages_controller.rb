class PagesController < ApplicationController
  before_action :all_members
  before_action  :authenticate_user!, only:[:admin]
  def index
    
  end
  def admin
     
  end
  def all_members
    @members = Member.all
  end

end
