class WelcomeController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  
  layout 'application'
  
  def index
  end
end
