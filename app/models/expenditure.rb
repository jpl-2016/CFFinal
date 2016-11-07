class Expenditure < ActiveRecord::Base
  belongs_to :campaign_finance_info
  belongs_to :entity
  belongs_to :expend_type
end
