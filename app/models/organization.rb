class Organization < ActiveRecord::Base
  has_many :employees, :inverse_of => :organization
  accepts_nested_attributes_for :employees, :allow_destroy => true
end
