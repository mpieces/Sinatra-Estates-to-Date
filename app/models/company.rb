class Company < ActiveRecord::Base
  has_many :estatesales
  has_many :users
end
