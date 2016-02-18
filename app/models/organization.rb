class Organization < ActiveRecord::Base
  has_many :employees
  accepts_nested_attributes_for :employees, :allow_destroy => true
end
