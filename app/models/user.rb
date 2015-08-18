class User < ActiveRecord::Base
  belongs_to :company

  has_many :user_estatesales
  has_many :estatesales, through: :user_estatesales

  has_many :favorites
  has_many :estatesales, through: :favorites

  validates :username, :email, :presence => true
  validates :username, :email, :uniqueness => true
  # validates :email, confirmation: true
  # validates :email_confirmation, presence: true

include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(username, password)
    user = User.find_by(username: username)
    user if user && user.password == password
  end
end

