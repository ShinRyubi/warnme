class Post < ApplicationRecord
  belongs_to :incident, optional: true

end
