class Address < ActiveRecord::Base
  belongs_to :state
  belongs_to :candidate

  belongs_to :filer
  has_many :treasurers
  has_many :committees
  has_many :entities

  validates_presence_of :city
end
