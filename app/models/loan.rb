class Loan < ActiveRecord::Base
  belongs_to :campaign_finance_info
  belongs_to :entity

  has_many :guarantors
end
