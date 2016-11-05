class Candidate < ActiveRecord::Base

  has_many :campaign_finance_infos
  has_many :filers
  belongs_to :office_held
  belongs_to :office_sought
  belongs_to :prefix
  belongs_to :address

end
