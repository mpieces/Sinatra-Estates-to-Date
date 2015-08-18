class Estatesale < ActiveRecord::Base
  belongs_to :company

  has_many   :user_estatesales
  has_many   :users, through: :user_estatesales

  has_many :favorites
  has_many :users, through: :favorites

  validates :title, :description, :presence => true


  def distance(zip_code)

  end
end
