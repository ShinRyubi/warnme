class Incident < ApplicationRecord

  has_many :posts
  has_many :users
  has_many_attached :images

  acts_as_taggable # Alias for acts_as_taggable_on :tags
end
