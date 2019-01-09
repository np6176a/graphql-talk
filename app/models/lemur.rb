class Lemur < ApplicationRecord
  belongs_to :owner

  validates_presence_of :name
end
