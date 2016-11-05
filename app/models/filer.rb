class Filer < ActiveRecord::Base

  has_many :campaign_finance_infos
  belongs_to :candidate
  belongs_to :office_sought
  belongs_to :office_held
  belongs_to :address
end
