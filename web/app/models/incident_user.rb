class IncidentUser < ApplicationRecord

  # has_many :users, dependent: :destroy, join_table: :syndications, optional: true
  has_many :users, dependent: :destroy, optional: true
  belongs_to :incident, optional: true

end
