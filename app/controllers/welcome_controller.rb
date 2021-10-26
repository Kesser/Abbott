class WelcomeController < ApplicationController
  def index
    @users     = User.all.count 
    @answers   = Answer.all.count
    @questions = Question.all.count
    @tenants   = Tenant.all.count
  end
end
