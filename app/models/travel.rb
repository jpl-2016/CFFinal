class Travel < ActiveRecord::Base
  belongs_to :campaign_finance_info
  has_many :travelers
end
