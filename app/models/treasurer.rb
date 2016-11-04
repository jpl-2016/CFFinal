class Treasurer < ActiveRecord::Base
  belongs_to :prefix
  belongs_to :address
end
