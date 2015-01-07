class Project < ActiveRecord::Base
  attr_accessible :abstract, :budget, :description, :title

  def self.expensive 
    Project.where('budget > ?',15000)
  end
end
