class WelcomeController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  
  layout 'welcome'
  
  def index
  end
end
