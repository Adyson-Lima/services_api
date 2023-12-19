class Service < ApplicationRecord
  validates :name, :value, presence: true
end
