class Filer < ActiveRecord::Base
  has_many :campaign_finance_infos
  belongs_to :candidate
  belongs_to :office_sought
  belongs_to :office_held
  belongs_to :address
  accepts_nested_attributes_for :address, allow_destroy: true, reject_if: :all_blank
end
