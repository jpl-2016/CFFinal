class Address < ActiveRecord::Base
  belongs_to :state

  has_many :filers
  has_many :treasurers
  has_many :candidates
  has_many :committees
  has_many :entities
end
