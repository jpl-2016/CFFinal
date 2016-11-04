class CampaignFinanceInfo < ActiveRecord::Base



  has_many :committee_notices
  has_many :travels
  has_many :contributions
  has_many :expenditures
  has_many :coh_payments
  has_many :investment_purchases
  has_many :credits
  has_many :loans

end
