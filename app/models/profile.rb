class Profile < ActiveRecord::Base
  belongs_to :student

  # attr_accessible :title, :body
  attr_accessible :address
end
