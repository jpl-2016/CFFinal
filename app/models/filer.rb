class Filer < ActiveRecord::Base
  has_many :users
  belongs_to :candidate
  belongs_to :office_sought
  belongs_to :office_held
  belongs_to :address
end
