class Entity < ActiveRecord::Base
  belongs_to :address
  belongs_to :entity_type
  has_many :contribution
  has_many :expenditure
  has_many :coh_payment
  has_many :investment_purchase
  has_many :credit
  has_many :loan
  has_many :travelers
end
