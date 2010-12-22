class Post < ActiveRecord::Base
  
  def title_lower
    title.downcase
  end
  
end
