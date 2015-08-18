class UserEstatesale < ActiveRecord::Base
  belongs_to :user
  belongs_to :estatesale
end

