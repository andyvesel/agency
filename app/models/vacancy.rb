class Vacancy < ActiveRecord::Base
  validates :title, presence: true
  validates :added, presence: true 
  validates :expiration, presence: true
  validates :salary, presence: true
  validates :contacts, presence: true
  
  has_many :skills, as: :skillable
end
