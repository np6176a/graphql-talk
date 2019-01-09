class Owner < ApplicationRecord
  has_many :lemurs

  validates_presence_of :first_name, :last_name
end
