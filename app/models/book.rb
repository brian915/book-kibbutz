class Book < ActiveRecord::Base
  belongs_to :author
  # add migration and flag for 'featured'
  
end
