class Favorite < ActiveRecord::Base
  belongs_to :Users
  belongs_to :districts
end
