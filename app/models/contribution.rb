class Contribution < ActiveRecord::Base
  belongs_to :campaign_finance_info
  belongs_to :entity

  accepts_nested_attributes_for :entity, allow_destroy: true, reject_if: :all_blank
end
