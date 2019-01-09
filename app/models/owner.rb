class Owner < ApplicationRecord
  validates_presence_of :first_name, :last_name
end
