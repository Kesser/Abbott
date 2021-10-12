class WelcomeController < ApplicationController
  def index
   @users     = User.all 
   @answers   = Answer.all
   @questions = Question.all
   @tenants   = Tenant.all
  end
end
