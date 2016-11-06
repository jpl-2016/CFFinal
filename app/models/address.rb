class Address < ActiveRecord::Base
  belongs_to :state
  belongs_to :candidate
  belongs_to :entity
  belongs_to :filer
  has_many :treasurers
  has_many :committees

  validates_presence_of :city
end
