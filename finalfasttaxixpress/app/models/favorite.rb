class Favorite < ActiveRecord::Base
  belongs_to :customers
  belongs_to :districts
end
