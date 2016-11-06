class Contribution < ActiveRecord::Base
  belongs_to :campaign_finance_info
  belongs_to :entity

  validates_presence_of :date
  validates_presence_of :firstname
end
