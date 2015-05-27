class Employee < ActiveRecord::Base
  validates :name, presence: true
  validates :contact, presence: true
  validates :salary, presence: true

  has_many :skills, as: :skillable
end
