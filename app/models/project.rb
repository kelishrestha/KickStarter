class Project < ActiveRecord::Base
  attr_accessible :abstract, :budget, :deadline, :description, :status, :title
  has_many :students
  validates :budget, :numericality => true
  validates :title, :presence => true
  scope :ongoing, where(status: 'ongoing')
  scope :expensive, where('budget > ?', 15000)
  # def self.expensive 
  #   Project.where('budget > ?',15000)
  # end
end
