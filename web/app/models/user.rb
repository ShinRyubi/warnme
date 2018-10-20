class User < ApplicationRecord
  acts_as_taggable
  belongs_to :incident, optional: true

  validates_uniqueness_of :email

  devise :database_authenticatable, :registerable
  #, :recoverable, :rememberable, :trackable, :validatable
  #:recoverable, :rememberable, :validatable
end
