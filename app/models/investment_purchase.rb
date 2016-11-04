class InvestmentPurchase < ActiveRecord::Base
  belongs_to :campaign_finance_info
  belongs_to :entity
end
