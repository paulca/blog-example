class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def thing
    'something'
  end
  
  def paul
    'paul'
  end
end
