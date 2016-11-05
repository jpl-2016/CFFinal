class CampaignFinanceInfo < ActiveRecord::Base
  belongs_to :candidate
  has_many :committee_notices
  has_many :travels
  has_many :contributions
  has_many :expenditures
  has_many :coh_payments
  has_many :investment_purchases
  has_many :credits
  has_many :loans

  accepts_nested_attributes_for :contributions
  validates_presence_of :filename

end
