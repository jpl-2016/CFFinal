class Entity < ActiveRecord::Base
  belongs_to :address
  belongs_to :entity_type
  has_many :contributions
  has_many :expenditures
  has_many :coh_payments
  has_many :investment_purchases
  has_many :credits
  has_many :loans
  has_many :travelers

  accepts_nested_attributes_for :address, allow_destroy: true, reject_if: :all_blank

end
