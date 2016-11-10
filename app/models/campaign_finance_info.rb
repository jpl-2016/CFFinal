class CampaignFinanceInfo < ActiveRecord::Base
  belongs_to :candidate
  belongs_to :user
  has_many :committee_notices
  has_many :travels
  has_many :contributions
  has_many :expenditures
  has_many :coh_payments
  has_many :investment_purchases
  has_many :credits
  has_many :loans

  accepts_nested_attributes_for :contributions
  accepts_nested_attributes_for :expenditures
  accepts_nested_attributes_for :loans
  accepts_nested_attributes_for :coh_payments
  accepts_nested_attributes_for :investment_purchases
  accepts_nested_attributes_for :travels
end
