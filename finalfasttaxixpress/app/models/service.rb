class Service < ActiveRecord::Base
  belongs_to :Customers
  belongs_to :districts
  belongs_to :districts
  belongs_to :Users
end
