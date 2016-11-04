class OfficeHeld < ActiveRecord::Base
  has_many :filers
  has_many :candidates
end
