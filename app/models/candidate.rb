class Candidate < ActiveRecord::Base

  has_many :campaign_finance_infos
  has_many :filers
  belongs_to :office_held
  belongs_to :office_sought
  belongs_to :prefix
  belongs_to :address
  accepts_nested_attributes_for :address, allow_destroy: true, reject_if: :all_blank
end
